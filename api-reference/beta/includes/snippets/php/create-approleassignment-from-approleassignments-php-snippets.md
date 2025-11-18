---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AppRoleAssignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AppRoleAssignment();
$requestBody->setOdataType('#microsoft.graph.appRoleAssignment');
$requestBody->setDeletedDateTime(new \DateTime('String (timestamp)'));
$requestBody->setAppRoleId('Guid');
$requestBody->setCreationTimestamp(new \DateTime('String (timestamp)'));
$requestBody->setPrincipalDisplayName('String');
$requestBody->setPrincipalId('Guid');
$requestBody->setPrincipalType('String');
$requestBody->setResourceDisplayName('String');
$requestBody->setResourceId('Guid');

$result = $graphServiceClient->users()->byUserId('user-id')->appRoleAssignments()->post($requestBody)->wait();

```