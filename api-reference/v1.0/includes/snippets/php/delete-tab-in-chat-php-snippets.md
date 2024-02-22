---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->chats()->byChatId('chat-id')->tabs()->byTeamsTabId('teamsTab-id')->delete()->wait();

```