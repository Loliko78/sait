from flask import Flask, request, render_template
import g4f
from g4f.Provider import (
    Bing,
    Aura,
    AItianhuSpace,
    AiChatOnline,
    ChatBase,
    ChatForAi,
ChatgptAi,
ChatgptNext,
Chatxyz,
GPTalk,
Gpt6,
Koala,
Liaobots,
OnlineGpt,
You,
Vercel,
)

from flask import Flask, request, jsonify

def match(text, alphabet=set('абвгдеёжзийклмнопрстуфхцчшщъыьэюя123456789')):
    return not alphabet.isdisjoint(text.lower())
app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def home():
    return render_template('home.html')

@app.route('/chat', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        user_input = request.form['user_input']
        admin_input = g4f.ChatCompletion.create(model='gpt-3.5-turbo', messages=[{"role": "user", "content": user_input}], stream=False)
        if match(admin_input)== False:
            admin_input='Ошибка. задайте вопрос еще раз'
        print(user_input)
        return render_template('index.html', user_input=user_input, admin_input=admin_input)
    else:
        return render_template('index.html')
if __name__ == '__main__':
    app.run(debug=False)
