---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateSoftwarePostRequestBody();
$requestBody->setSoftwareType(new TeamworkSoftwareType('teamsClient'));

$requestBody->setSoftwareVersion('1.0.96.22');



$graphServiceClient->teamwork()->devices()->byTeamworkDeviceId('teamworkDevice-id')->updateSoftware()->post($requestBody);


```