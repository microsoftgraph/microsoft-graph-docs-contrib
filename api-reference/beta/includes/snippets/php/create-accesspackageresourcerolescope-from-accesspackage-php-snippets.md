---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageResourceRoleScope();
$accessPackageResourceRole = new AccessPackageResourceRole();
$accessPackageResourceRole->setOriginId('Member_b31fe1f1-3651-488f-bd9a-1711887fd4ca');

$accessPackageResourceRole->setDisplayName('Member');

$accessPackageResourceRole->setOriginSystem('AadGroup');

$accessPackageResourceRoleAccessPackageResource = new AccessPackageResource();
$accessPackageResourceRoleAccessPackageResource->setId('1d08498d-72a1-403f-8511-6b1f875746a0');

$accessPackageResourceRoleAccessPackageResource->setResourceType('O365 Group');

$accessPackageResourceRoleAccessPackageResource->setOriginId('b31fe1f1-3651-488f-bd9a-1711887fd4ca');

$accessPackageResourceRoleAccessPackageResource->setOriginSystem('AadGroup');


$accessPackageResourceRole->setAccessPackageResource($accessPackageResourceRoleAccessPackageResource);

$requestBody->setAccessPackageResourceRole($accessPackageResourceRole);
$accessPackageResourceScope = new AccessPackageResourceScope();
$accessPackageResourceScope->setOriginId('b31fe1f1-3651-488f-bd9a-1711887fd4ca');

$accessPackageResourceScope->setOriginSystem('AadGroup');


$requestBody->setAccessPackageResourceScope($accessPackageResourceScope);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackagesById('accessPackage-id')->accessPackageResourceRoleScopes()->post($requestBody);


```