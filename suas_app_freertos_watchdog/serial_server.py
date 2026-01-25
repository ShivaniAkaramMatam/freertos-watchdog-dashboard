import serial, json
from flask import Flask, Response

SERIAL_PORT = "/dev/ttyUSB0"
BAUD_RATE = 115200

ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=1)
app = Flask(__name__)
tasks = {}

@app.route("/events")
def events():
    def generate():
        while True:
            line = ser.readline().decode(errors="ignore").strip()
            if line:
                try:
                    data = json.loads(line)
                    tname = data.get("task")
                    if tname:
                        if tname not in tasks:
                            tasks[tname] = {"last_n": 0, "status": "alive", "restarts": 0}
                        if data.get("event") == "failure":
                            tasks[tname]["status"] = "failed"
                        elif data.get("event") == "watchdog_restart":
                            tasks[tname]["status"] = "restarted"
                            tasks[tname]["restarts"] = data.get("count", tasks[tname]["restarts"] + 1)
                        else:
                            tasks[tname]["last_n"] = data.get("n", tasks[tname]["last_n"])
                            tasks[tname]["status"] = "alive"
                except:
                    pass
                yield f"data: {line}\n\n"
    return Response(generate(), mimetype="text/event-stream")

@app.route("/")
def index():
    return """
    <!DOCTYPE html>
    <html>
    <head><title>FreeRTOS Task Dashboard</title></head>
    <body>
        <h1>Live Tasks</h1>
        <div id="tasks"></div>
        <h2>Event Log</h2>
        <div id="log"></div>
        <script>
            const evtSource = new EventSource("/events");
            const tasksDiv = document.getElementById("tasks");
            const logDiv = document.getElementById("log");
            const tasks = {};

            evtSource.onmessage = (e) => {
                let data;
                try { data = JSON.parse(e.data); } catch { data = {raw:e.data}; }

                const p = document.createElement("p");
                p.textContent = e.data;
                logDiv.appendChild(p);
                logDiv.scrollTop = logDiv.scrollHeight;

                if (data.task) {
                    if (!tasks[data.task]) {
                        const div = document.createElement("div");
                        div.id = "task-" + data.task;
                        div.className = "task alive";
                        tasksDiv.appendChild(div);
                        tasks[data.task] = div;
                    }
                    const div = tasks[data.task];
                    let status = "alive";
                    if (data.event === "failure") status = "failed";
                    else if (data.event === "watchdog_restart") status = "restarted";
                    div.className = "task " + status;
                    div.innerHTML = `<strong>${data.task}</strong><br>
                                     Status: ${status}<br>
                                     Count: ${data.n ?? "-"}`;
                }
            };
        </script>
        <style>
            .task { padding: 10px; border:1px solid #ccc; margin-bottom:5px; }
            .alive { background-color:#c8f7c5; }
            .failed { background-color:#f7c5c5; }
            .restarted { background-color:#f7f1c5; }
        </style>
    </body>
    </html>
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)

