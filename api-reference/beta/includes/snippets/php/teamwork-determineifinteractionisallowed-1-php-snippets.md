---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Teamwork\DetermineIfInteractionIsAllowed\DetermineIfInteractionIsAllowedPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Identity;
use Microsoft\Graph\Beta\Generated\Models\TeamworkUserIdentity;
use Microsoft\Graph\Beta\Generated\Models\TeamworkInteractionType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DetermineIfInteractionIsAllowedPostRequestBody();
$usersIdentity1 = new TeamworkUserIdentity();
$usersIdentity1->setOdataType('microsoft.graph.teamworkUserIdentity');
$usersIdentity1->setId('59b5bc69-ca73-4ffd-a2e0-88a79115d13b');
$usersArray []= $usersIdentity1;
$requestBody->setUsers($usersArray);

$requestBody->setInteractionType(new TeamworkInteractionType('createChat'));

$result = $graphServiceClient->teamwork()->determineIfInteractionIsAllowed()->post($requestBody)->wait();

```