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
$resource->setDisplayName('Dev');
$resource->setDescription('Dev');
$resource->setOriginId('/subscriptions/828b526f-c769-4b19-9797-734b4843b978');
$resource->setOriginSystem('AzureResources');
$additionalData = [
	'resourceType' => 'Subscription',
];
$resource->setAdditionalData($additionalData);
$requestBody->setResource($resource);
$catalog = new AccessPackageCatalog();
$catalog->setId('e8368470-afaf-44da-ba86-13a7318f1995');
$requestBody->setCatalog($catalog);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->resourceRequests()->post($requestBody)->wait();

```