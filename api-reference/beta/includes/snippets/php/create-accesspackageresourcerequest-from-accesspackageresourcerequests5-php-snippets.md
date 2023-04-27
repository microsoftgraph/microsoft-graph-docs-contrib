---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageResourceRequest();
$requestBody->setCatalogId('beedadfe-01d5-4025-910b-84abb9369997');

$requestBody->setRequestType('AdminRemove');

$accessPackageResource = new AccessPackageResource();
$accessPackageResource->setId('354078e5-dbce-4894-8af4-0ab274d41662');


$requestBody->setAccessPackageResource($accessPackageResource);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageResourceRequests()->post($requestBody);


```