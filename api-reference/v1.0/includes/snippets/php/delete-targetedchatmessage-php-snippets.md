---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->users()->byUserId('user-id')->chats()->byChatId('chat-id')->targetedMessages()->byTargetedChatMessageId('targetedChatMessage-id')->delete()->wait();

```