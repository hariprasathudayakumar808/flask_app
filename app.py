from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/webhook', methods=['POST'])
def webhook():
    data = request.get_json()
    print("Received webhook data:", data)
    result = data.get("number")*3
    return jsonify({"result": result}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
