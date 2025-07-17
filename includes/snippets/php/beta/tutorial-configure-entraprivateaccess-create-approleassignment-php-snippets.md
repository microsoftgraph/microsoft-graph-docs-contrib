---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AppRoleAssignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AppRoleAssignment();
$requestBody->setPrincipalId('4628e7df-dff3-407c-a08f-75f08c0806dc');
$requestBody->setPrincipalType('User');
$requestBody->setAppRoleId('18d14569-c3bd-439b-9a66-3a2aee01d14f');
$requestBody->setResourceId('a8cac399-cde5-4516-a674-819503c61313');

$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->appRoleAssignments()->post($requestBody)->wait();

```