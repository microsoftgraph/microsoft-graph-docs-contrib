---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnlineMeeting();
$lobbyBypassSettings = new LobbyBypassSettings();
$lobbyBypassSettings->setIsDialInBypassEnabled(true);


$requestBody->setLobbyBypassSettings($lobbyBypassSettings);


$result = $graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->patch($requestBody);


```