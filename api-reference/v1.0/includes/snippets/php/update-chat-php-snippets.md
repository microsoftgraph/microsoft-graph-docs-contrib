---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Chat();
$requestBody->setTopic('Group chat title update');

$result = $graphServiceClient->chats()->byChatId('chat-id')->patch($requestBody)->wait();

```