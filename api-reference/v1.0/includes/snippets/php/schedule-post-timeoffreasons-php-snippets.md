---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TimeOffReason();
$requestBody->setDisplayName('Vacation');

$requestBody->setIconType(new TimeOffReasonIconType('plane'));

$requestBody->setIsActive(true);



$result = $graphServiceClient->teamsById('team-id')->schedule()->timeOffReasons()->post($requestBody);


```