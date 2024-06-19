---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ConnectedOrganization;
use Microsoft\Graph\Beta\Generated\Models\ConnectedOrganizationState;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConnectedOrganization();
$requestBody->setDisplayName('Connected organization new name');
$requestBody->setDescription('Connected organization new description');
$requestBody->setState(new ConnectedOrganizationState('configured'));

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->connectedOrganizations()->byConnectedOrganizationId('connectedOrganization-id')->patch($requestBody)->wait();

```