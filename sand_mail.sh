#! / bin / bash

Recipient = ”admin @ example.com”
Subject = ”Greeting”
Message = ”Добро пожаловать на наш сайт”
` mail -s $ Subject $ Recipient <<< $ Message`
