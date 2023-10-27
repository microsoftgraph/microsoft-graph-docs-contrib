---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TimeOffReason();
$requestBody->setDisplayName('Vacation');
$requestBody->setIconType(new TimeOffReasonIconType('plane'));
$requestBody->setIsActive(true);

$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->timeOffReasons()->post($requestBody)->wait();

```