$(document).ready(function () {

    $('#chatbot').on('click', '#chatbot-submit', function (e) {
        e.preventDefault();

        message = $('#chatbot-input').val();
        message = message.toLowerCase();
        sendMessage();
        bot(message);
        clearInterval(botAuto);
    });

    function botAutoMessage() {
        var messageArray = [
            'Здравствуйте, можете задать свой вопрос!',
        ];
        sendMessage(messageArray);
    }

    var botAuto = setInterval(botAutoMessage, 15000);

    function bot(message) {
        if (message.indexOf('привет') >= 0 || message.indexOf('здравствуйте') >= 0) {
            var messageArray = [
                'Доброго времени суток!',
                'Здравствуйте!'
            ];
            sendMessage(messageArray);
        }
        else if (message.indexOf('проходной балл') >= 0) {
            var messageArray = [
                'Никто точно не знает. сколько баллов необходимо, ' +
                'но вы можете воспользоваться специальным калькулятором на нашем сайте ' +
                '<a href="http://vstup.nure.ua/veroyatnost-postupleniya/">Калькулятор вероятности поступления</a>',
            ];
            sendMessage(messageArray);
        }
        else if (message.indexOf('как дела?') >= 0) {
            var messageArray = [
                'Отлично, помогаю студентам разобраться с их проблемами.',
            ];
            sendMessage(messageArray);
        }
        else if (message.indexOf('общеж') >= 0 || message.indexOf('общага') >= 0) {
            var messageArray = [
                'Всем иногородним студентам предлагается право на проживание в общежитие. ' +
                'В ХНУРЭ 7 общежитий - распределение идет по факультетам' +
                'Поселение проходит в последних числах августа, конкретнее об этом ' +
                'и о необходимых для поселения документов будет сказано в письме абитуриента'
            ];
            sendMessage(messageArray);
        }
        else if (message.indexOf('стоит') >= 0 || message.indexOf('стоимость обучения') >= 0
            || message.indexOf('стоимость контракта') >= 0
            || message.indexOf('цена') >= 0 || message.indexOf('контракт') >= 0 || message.indexOf('кантракт') >= 0) {
            var messageArray = [
                'Стоимость контрактного обучения по направлениям ' +
                'ЭК, ИНФ, КН, КИ, ПИ, АКИТ, ТК, ИПД, БИКС, СТЗИ, УБ — 9900 грн/год' +
                ' по направлениям ПМ, СА, СИ, МН, ЭУС, АТ, РТ, РЭА, МИТ, МСС, ОТ, БМИ – 8900 грн/год.'
            ];
            sendMessage(messageArray);
        }

        else if (message.indexOf('прием документов') >= 0 || message.indexOf('документы для поступления') >= 0) {
            var messageArray = [
                'Прием документов проходит с 11 июля по 20 июля' +
                ' Тебе понадобятся: заявление, документ о полном среднем образовании ' +
                '(и / или о полученном образовательно-квалификационном уровне) ' +
                'и приложение к нему (оригинал или заверенная копия), 2 ксерокопии этих документов, ' +
                'медицинская справка форма 086-о (оригинал или заверенная копия), 4 фотографий 3 х 4 см, паспорт' +
                ' по 2 ксерокопии первой, второй страниц паспорта и страницы с регистрацией места жительства, ' +
                'военный билет (приписное свидетельство), 2 ксерокопии справки о присвоении идентификационного номера, ' +
                'сертификат ВНО (оригинал или заверенная копия), документы, дающие право на льготы'
            ];
            sendMessage(messageArray);
        }
        else if (message.indexOf('бюджетные места') >= 0 || message.indexOf('бюджет') >= 0) {
            var messageArray = [
                'Количество бюджетных мест можно узнать на нашем ' +
                '<a href="http://vstup.nure.ua/materialy/kolichestvo-byudzhetnyh-mest.html">сайте.</a>',
            ];
            sendMessage(messageArray);
        }

        else if (message.indexOf('кто тебя сделал') >= 0 || message.indexOf('создатель') >= 0) {
            var messageArray = [
                'Я результат кропотливого десятилетнего труда двух сотен программистов',
            ];
            sendMessage(messageArray);
        }
        else {
            var messageArray = [
                'Ответ на этот вопрос вам могут предоставить наши ' +
                '<a href="http://vstup.nure.ua/onlayn-konsultaciya-s-priemnoy-komissiey/">эксперты</a>',
            ];
            sendMessage(messageArray);

        }
    }

    // scroll to the bottom of chat box
    function scrollToMessage() {
        var msgBox = $('#chatbot-message');
        var height = msgBox[0].scrollHeight;
        msgBox.scrollTop(height);
    }

    // sending message
    function sendMessage(message) {
        if (message) {
            $('#chatbot-input').addClass('disabled');
            $('#chatbot-input').attr('disabled', 'disabled');
            $('#chatbot-submit').addClass('disabled');
            $('#chatbot-submit').attr('disabled', 'disabled');
            var respond = message[Math.floor(Math.random() * message.length)];

            setTimeout(function () {
                botPre = '<span class="message">Набирает... <i class="glyphicon glyphicon-pencil"></i></span>';
                botVal = respond;
                botMessage = $('#chatbot-message').html() + '<p class="from-bot"><span class="user">Комиссия: </span>' + botPre + '</p>';
                $('#chatbot-input').attr('placeholder', 'Набирает...');
                $('#chatbot-message').html(botMessage);
                scrollToMessage();
            }, 800);

            setTimeout(function () {
                botMessageReplace = $('#chatbot-message .from-bot:last-child()');
                botMessage = '<span class="user">Комиссия: </span>' + botVal;
                $('#chatbot-input').attr('placeholder', 'Введите сообщение...');
                botMessageReplace.html(botMessage);
                scrollToMessage();
                $('#chatbot-input').removeClass('disabled');
                $('#chatbot-input').removeAttr('disabled');
                $('#chatbot-submit').removeClass('disabled');
                $('#chatbot-submit').removeAttr('disabled');
            }, 2800);

        } else {

            userVal = $('#chatbot-input').val();
            userMessage = $('#chatbot-message').html() + '<p class="from-user"><span class="user">Вы: </span>' + userVal + '</p>';
            $('#chatbot-message').html(userMessage);
            scrollToMessage();
            $('#chatbot-input').val('');

        }
    }
});