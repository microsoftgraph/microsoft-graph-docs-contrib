---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AppRoleAssignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AppRoleAssignment();
$requestBody->setOdataType('#microsoft.graph.appRoleAssignment');
$requestBody->setDeletedDateTime(new \DateTime('String (timestamp)'));
$requestBody->setAppRoleId('Guid');
$requestBody->setPrincipalDisplayName('String');
$requestBody->setPrincipalId('Guid');
$requestBody->setPrincipalType('String');
$requestBody->setResourceDisplayName('String');
$requestBody->setResourceId('Guid');
$additionalData = [
	'creationTimestamp' => 'String (timestamp)',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->users()->byUserId('user-id')->appRoleAssignments()->post($requestBody)->wait();

```