---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->chats()->byChatId('chat-id')->pinnedMessages()->byPinnedChatMessageInfoId('pinnedChatMessageInfo-id')->delete()->wait();

```