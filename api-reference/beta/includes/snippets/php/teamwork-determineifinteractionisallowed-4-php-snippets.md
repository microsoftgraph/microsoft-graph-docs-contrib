---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Teamwork\DetermineIfInteractionIsAllowed\DetermineIfInteractionIsAllowedPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Identity;
use Microsoft\Graph\Beta\Generated\Models\EmailIdentity;
use Microsoft\Graph\Beta\Generated\Models\TeamworkInteractionType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DetermineIfInteractionIsAllowedPostRequestBody();
$usersIdentity1 = new EmailIdentity();
$usersIdentity1->setOdataType('microsoft.graph.emailIdentity');
$usersIdentity1->setEmail('LauraW@contoso.com');
$usersArray []= $usersIdentity1;
$requestBody->setUsers($usersArray);

$requestBody->setInteractionType(new TeamworkInteractionType('createChat'));

$result = $graphServiceClient->teamwork()->determineIfInteractionIsAllowed()->post($requestBody)->wait();

```