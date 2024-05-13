---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageResourceRequest;
use Microsoft\Graph\Generated\Models\AccessPackageResource;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageResourceRequest();
$requestBody->setCatalogId('26ac0c0a-08bc-4a7b-a313-839f58044ba5');
$requestBody->setRequestType('AdminAdd');
$requestBody->setJustification('');
$accessPackageResource = new AccessPackageResource();
$accessPackageResource->setDisplayName('Sales');
$accessPackageResource->setDescription('https://contoso.sharepoint.com/sites/Sales');
$accessPackageResource->setUrl('https://contoso.sharepoint.com/sites/Sales');
$accessPackageResource->setResourceType('SharePoint Online Site');
$accessPackageResource->setOriginId('https://contoso.sharepoint.com/sites/Sales');
$accessPackageResource->setOriginSystem('SharePointOnline');
$requestBody->setAccessPackageResource($accessPackageResource);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageResourceRequests()->post($requestBody)->wait();

```