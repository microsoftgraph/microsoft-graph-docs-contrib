---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RegisteredUser();
$additionalData = [
'@odata.id' => 'https://graph.microsoft.com/beta/directoryObjects/{id}', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->devicesById('device-id')->registeredUsersById('directoryObject-id')->post($requestBody);


```