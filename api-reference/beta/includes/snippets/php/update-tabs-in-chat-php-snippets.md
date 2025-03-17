---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TeamsTab;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TeamsTab();
$requestBody->setDisplayName('My Contoso Tab - updated again');

$result = $graphServiceClient->chats()->byChatId('chat-id')->tabs()->byTeamsTabId('teamsTab-id')->patch($requestBody)->wait();

```