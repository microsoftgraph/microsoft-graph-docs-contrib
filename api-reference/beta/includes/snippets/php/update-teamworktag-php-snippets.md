---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TeamworkTag();
$requestBody->setDisplayName('Finance');



$result = $graphServiceClient->teams()->byTeamId('team-id')->tags()->byTagId('teamworkTag-id')->patch($requestBody);


```