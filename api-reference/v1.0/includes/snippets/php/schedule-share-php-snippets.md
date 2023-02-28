---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SharePostRequestBody();
$requestBody->setNotifyTeam(true);

$requestBody->setStartDateTime(new DateTime('2018-10-08T00:00:00.000Z'));

$requestBody->setEndDateTime(new DateTime('2018-10-15T00:00:00.000Z'));



$graphServiceClient->teamsById('team-id')->schedule()->microsoftGraphShare()->post($requestBody);


```