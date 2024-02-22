---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TeamsAppInstallation();
$additionalData = [
	'teamsApp@odata.bind' => 'https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->chats()->byChatId('chat-id')->installedApps()->post($requestBody)->wait();

```