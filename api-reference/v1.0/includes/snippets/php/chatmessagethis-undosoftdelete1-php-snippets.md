---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->users()->byUserId('user-id')->chats()->byChatId('chat-id')->messages()->byChatMessageId('chatMessage-id')->undoSoftDelete()->post()->wait();

```