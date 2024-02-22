---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpgradePostRequestBody();

$graphServiceClient->chats()->byChatId('chat-id')->installedApps()->byTeamsAppInstallationId('teamsAppInstallation-id')->upgrade()->post($requestBody)->wait();

```