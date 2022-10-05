---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UpdateSoftwarePostRequestBody();
$requestBody->setSoftwareType(new TeamworkSoftwareType('teamsclient'));

$requestBody->setSoftwareVersion('1.0.96.22');



$graphServiceClient->teamwork()->devicesById('teamworkDevice-id')->updateSoftware()->post($requestBody);


```