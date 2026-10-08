---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageResourceRequest;
use Microsoft\Graph\Generated\Models\AccessPackageRequestType;
use Microsoft\Graph\Generated\Models\AccessPackageResource;
use Microsoft\Graph\Generated\Models\AccessPackageCatalog;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageResourceRequest();
$requestBody->setRequestType(new AccessPackageRequestType('adminAdd'));
$resource = new AccessPackageResource();
$resource->setDisplayName('test-mgmtgroup');
$resource->setDescription('test-mgmtgroup');
$resource->setOriginId('/providers/Microsoft.Management/managementGroups/test-mgmtgroup');
$resource->setOriginSystem('AzureResources');
$additionalData = [
	'resourceType' => 'ManagementGroup',
];
$resource->setAdditionalData($additionalData);
$requestBody->setResource($resource);
$catalog = new AccessPackageCatalog();
$catalog->setId('e8368470-afaf-44da-ba86-13a7318f1995');
$requestBody->setCatalog($catalog);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->resourceRequests()->post($requestBody)->wait();

```