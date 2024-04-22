---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UpdateSoftwarePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateSoftwarePostRequestBody();
$requestBody->setSoftwareType(new TeamworkSoftwareType('teamsClient'));
$requestBody->setSoftwareVersion('1.0.96.22');

$graphServiceClient->teamwork()->devices()->byTeamworkDeviceId('teamworkDevice-id')->updateSoftware()->post($requestBody)->wait();

```