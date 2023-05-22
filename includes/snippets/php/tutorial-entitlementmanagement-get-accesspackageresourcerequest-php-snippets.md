---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageResourceRequest();
$requestBody->setCatalogId('cec5d6ab-c75d-47c0-9c1c-92e89f66e384');

$requestBody->setRequestType('AdminAdd');

$requestBody->setJustification('');

$accessPackageResource = new AccessPackageResource();
$accessPackageResource->setDisplayName('Marketing resources');

$accessPackageResource->setDescription('Marketing group');

$accessPackageResource->setResourceType('AadGroup');

$accessPackageResource->setOriginId('e93e24d1-2b65-4a6c-a1dd-654a12225487');

$accessPackageResource->setOriginSystem('AadGroup');


$requestBody->setAccessPackageResource($accessPackageResource);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageResourceRequests()->post($requestBody);


```