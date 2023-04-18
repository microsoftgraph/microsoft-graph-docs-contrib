---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

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


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageResourceRequests()->post($requestBody);


```