---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Schedule();
$requestBody->setEnabled(true);

$requestBody->setTimeZone('America/Chicago');



$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->put($requestBody);


```