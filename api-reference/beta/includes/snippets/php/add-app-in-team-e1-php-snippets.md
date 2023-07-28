---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TeamsAppInstallation();
$additionalData = [
		'teamsApp@odata.bind' => 'https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->teams()->byTeamId('team-id')->installedApps()->post($requestBody);


```