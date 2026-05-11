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
$accessPackageResource->setDisplayName('test-mgmtgroup');
$accessPackageResource->setDescription('test-mgmtgroup');
$accessPackageResource->setResourceType('ManagementGroup');
$accessPackageResource->setOriginId('/providers/Microsoft.Management/managementGroups/test-mgmtgroup');
$accessPackageResource->setOriginSystem('AzureResources');
$requestBody->setAccessPackageResource($accessPackageResource);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageResourceRequests()->post($requestBody)->wait();

```