---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SchedulePutRequestBody();
$additionalData = [
'enabled' => true,
'timeZone' => 'America/Chicago', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->teamsById('team-id')->schedule()->put($requestBody);


```