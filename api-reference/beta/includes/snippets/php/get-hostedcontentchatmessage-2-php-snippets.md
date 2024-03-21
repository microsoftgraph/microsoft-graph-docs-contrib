---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->chats()->byChatId('chat-id')->messages()->byChatMessageId('chatMessage-id')->hostedContents()->byChatMessageHostedContentId('chatMessageHostedContent-id')->content()->get()->wait();

```