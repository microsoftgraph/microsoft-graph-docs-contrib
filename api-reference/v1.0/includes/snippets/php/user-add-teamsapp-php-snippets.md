---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UserScopeTeamsAppInstallation();
$additionalData = [
		'teamsApp@odata.bind' => 'https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/12345678-9abc-def0-123456789a', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->usersById('user-id')->teamwork()->installedApps()->post($requestBody);


```