---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->chats()->byChatId('chat-id')->members()->byConversationMemberId('conversationMember-id')->get()->wait();

```