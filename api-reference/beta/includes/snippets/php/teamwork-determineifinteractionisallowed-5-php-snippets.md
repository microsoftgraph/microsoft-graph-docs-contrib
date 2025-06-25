---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Teamwork\DetermineIfInteractionIsAllowed\DetermineIfInteractionIsAllowedPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\Identity;
use Microsoft\Graph\Beta\Generated\Models\EmailIdentity;
use Microsoft\Graph\Beta\Generated\Models\TeamworkUserIdentity;
use Microsoft\Graph\Beta\Generated\Models\TeamworkInteractionType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DetermineIfInteractionIsAllowedPostRequestBody();
$usersIdentity1 = new EmailIdentity();
$usersIdentity1->setOdataType('microsoft.graph.emailIdentity');
$usersIdentity1->setEmail('LauraW@foo.com');
$usersArray []= $usersIdentity1;
$usersIdentity2 = new TeamworkUserIdentity();
$usersIdentity2->setOdataType('microsoft.graph.teamworkUserIdentity');
$usersIdentity2->setUserPrincipalName('MaiaR@foobar.com');
$usersArray []= $usersIdentity2;
$usersIdentity3 = new TeamworkUserIdentity();
$usersIdentity3->setOdataType('microsoft.graph.teamworkUserIdentity');
$usersIdentity3->setId('bd6a223f-59b5-46dd-90bc-0ddebaf3da5a');
$usersArray []= $usersIdentity3;
$requestBody->setUsers($usersArray);

$requestBody->setInteractionType(new TeamworkInteractionType('createChat'));

$result = $graphServiceClient->teamwork()->determineIfInteractionIsAllowed()->post($requestBody)->wait();

```