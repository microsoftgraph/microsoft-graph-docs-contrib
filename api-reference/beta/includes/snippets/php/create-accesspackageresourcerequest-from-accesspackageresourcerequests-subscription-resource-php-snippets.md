---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageResourceRequest;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageResource;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageResourceRequest();
$requestBody->setCatalogId('e8368470-afaf-44da-ba86-13a7318f1995');
$requestBody->setRequestType('AdminAdd');
$requestBody->setJustification('');
$accessPackageResource = new AccessPackageResource();
$accessPackageResource->setId('');
$accessPackageResource->setDisplayName('Dev');
$accessPackageResource->setDescription('Dev');
$accessPackageResource->setResourceType('Subscription');
$accessPackageResource->setOriginId('/subscriptions/828b526f-c769-4b19-9797-734b4843b978');
$accessPackageResource->setOriginSystem('AzureResources');
$requestBody->setAccessPackageResource($accessPackageResource);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageResourceRequests()->post($requestBody)->wait();

```