from flask import Flask, request, jsonify
import ssl
import os

app = Flask(__name__)

@app.route("/", methods=["GET"])
def get():
    print(request.headers)
    return jsonify({"message": "ok"})


if __name__ == "__main__":
    # cwd_directory = os.path.dirname(__file__)
    # ssl_context= ssl.SSLContext(ssl.PROTOCOL_SSLv23)
    # ssl_context.load_cert_chain(f'{cwd_directory}/certs/server.crt', f'{cwd_directory}/certs/priv.key')

    # app.run(host="0.0.0.0", port=3000, ssl_context=ssl_context)
    app.run(host="0.0.0.0", port=3000)
