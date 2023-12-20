---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TeamworkTag();
$requestBody->setDisplayName('Finance');

$result = $graphServiceClient->teams()->byTeamId('team-id')->tags()->byTeamworkTagId('teamworkTag-id')->patch($requestBody)->wait();

```