<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Приветственная страница</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
            transition: background-color 0.3s;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 10px;
            background: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1 {
            color: #333;
        }
        .greeting {
            font-size: 24px;
            margin: 20px 0;
            padding: 15px;
            border-radius: 5px;
        }
        .color-line {
            height: 3px;
            width: 100%;
            margin: 20px 0;
            transition: background-color 0.3s;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #45a049;
        }
        .random-text {
            margin-top: 20px;
            padding: 10px;
            background-color: #f0f0f0;
            border-radius: 5px;
            word-wrap: break-word;
        }
    </style>
</head>
<body>
    <div class="container">
        <?php
        // Приветствие на русском
        $russianGreeting = "Привет, мир!";
        
        // Приветствие на английском
        $englishGreeting = "Hello, World!";
        
        // Функция для генерации случайного цвета
        function getRandomColor() {
            return sprintf('#%06X', mt_rand(0, 0xFFFFFF));
        }
        
        // Функция для генерации случайной строки
        function getRandomString($length = 20) {
            $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
            $randomString = '';
            for ($i = 0; $i < $length; $i++) {
                $randomString .= $characters[rand(0, strlen($characters) - 1)];
            }
            return $randomString;
        }
        
        // Получаем случайный цвет для строки
        $lineColor = getRandomColor();
        
        // Получаем случайную строку
        $randomText = getRandomString(15);
        ?>
        
        <h1>Добро пожаловать!</h1>
        
        <div class="greeting">
            <strong>🇷🇺 Русский:</strong> <?php echo $russianGreeting; ?><br>
            <strong>🇬🇧 English:</strong> <?php echo $englishGreeting; ?>
        </div>
        
        <div class="color-line" style="background-color: <?php echo $lineColor; ?>;"></div>
        
        <p>Цветная строка выше имеет цвет: <strong style="color: <?php echo $lineColor; ?>;"><?php echo $lineColor; ?></strong></p>
        
        <div class="random-text">
            <strong>Случайная строка:</strong> <?php echo $randomText; ?>
        </div>
        
        <button onclick="location.reload()">Обновить страницу</button>
        
        <p style="margin-top: 20px; font-size: 12px; color: #666;">
            При каждом обновлении страницы меняется цвет линии и генерируется новая случайная строка
        </p>
    </div>
    
    <script>
        // Дополнительная интерактивность - можно добавить анимацию при наведении
        document.querySelectorAll('.greeting, .random-text').forEach(element => {
            element.addEventListener('mouseenter', function() {
                this.style.transform = 'scale(1.02)';
                this.style.transition = 'transform 0.3s';
            });
            element.addEventListener('mouseleave', function() {
                this.style.transform = 'scale(1)';
            });
        });
    </script>
</body>
</html>
