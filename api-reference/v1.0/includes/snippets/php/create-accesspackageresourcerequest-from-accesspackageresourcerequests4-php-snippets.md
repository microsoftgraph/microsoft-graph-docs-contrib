---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageResourceRequest();
$requestBody->setRequestType(new AccessPackageRequestType('adminAdd'));

$resource = new AccessPackageResource();
$resource->setDisplayName('Test group');

$resource->setOriginId('8ab659d0-3839-427d-8c54-5ae92f0b3e2e');

$resource->setOriginSystem('AadGroup');


$requestBody->setResource($resource);
$catalog = new AccessPackageCatalog();
$catalog->setId('beedadfe-01d5-4025-910b-84abb9369997');


$requestBody->setCatalog($catalog);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->resourceRequests()->post($requestBody);


```