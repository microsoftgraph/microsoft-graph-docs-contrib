---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Chats\Item\InstalledApps\Item\Upgrade\UpgradePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpgradePostRequestBody();

$graphServiceClient->chats()->byChatId('chat-id')->installedApps()->byTeamsAppInstallationId('teamsAppInstallation-id')->upgrade()->post($requestBody)->wait();

```