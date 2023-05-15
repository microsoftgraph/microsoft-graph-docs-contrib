---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageResourceRoleScope();
$accessPackageResourceRole = new AccessPackageResourceRole();
$accessPackageResourceRole->setOriginId('Member_e93e24d1-2b65-4a6c-a1dd-654a12225487');

$accessPackageResourceRole->setDisplayName('Member');

$accessPackageResourceRole->setOriginSystem('AadGroup');

$accessPackageResourceRoleAccessPackageResource = new AccessPackageResource();
$accessPackageResourceRoleAccessPackageResource->setId('4a1e21c5-8a76-4578-acb1-641160e076e8');

$accessPackageResourceRoleAccessPackageResource->setResourceType('Security Group');

$accessPackageResourceRoleAccessPackageResource->setOriginId('e93e24d1-2b65-4a6c-a1dd-654a12225487');

$accessPackageResourceRoleAccessPackageResource->setOriginSystem('AadGroup');


$accessPackageResourceRole->setAccessPackageResource($accessPackageResourceRoleAccessPackageResource);

$requestBody->setAccessPackageResourceRole($accessPackageResourceRole);
$accessPackageResourceScope = new AccessPackageResourceScope();
$accessPackageResourceScope->setOriginId('e93e24d1-2b65-4a6c-a1dd-654a12225487');

$accessPackageResourceScope->setOriginSystem('AadGroup');


$requestBody->setAccessPackageResourceScope($accessPackageResourceScope);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackagesById('accessPackage-id')->accessPackageResourceRoleScopes()->post($requestBody);


```