---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AppRoleAssignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AppRoleAssignment();
$requestBody->setPrincipalId('59bb3898-0621-4414-ac61-74f9d7201355');
$requestBody->setPrincipalType('User');
$requestBody->setAppRoleId('3a84e31e-bffa-470f-b9e6-754a61e4dc63');
$requestBody->setResourceId('d3616293-fff8-4415-9f01-33b05dad1b46');

$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->appRoleAssignments()->post($requestBody)->wait();

```