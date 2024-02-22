---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnlineMeeting();
$lobbyBypassSettings = new LobbyBypassSettings();
$lobbyBypassSettings->setIsDialInBypassEnabled(true);
$requestBody->setLobbyBypassSettings($lobbyBypassSettings);

$result = $graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->patch($requestBody)->wait();

```