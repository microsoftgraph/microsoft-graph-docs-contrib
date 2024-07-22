---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Teamwork\Devices\Item\UpdateSoftware\UpdateSoftwarePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\TeamworkSoftwareType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateSoftwarePostRequestBody();
$requestBody->setSoftwareType(new TeamworkSoftwareType('teamsClient'));
$requestBody->setSoftwareVersion('1.0.96.22');

$graphServiceClient->teamwork()->devices()->byTeamworkDeviceId('teamworkDevice-id')->updateSoftware()->post($requestBody)->wait();

```