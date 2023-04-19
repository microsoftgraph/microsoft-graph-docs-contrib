---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessPackageResourceRoleScope();
$accessPackageResourceRole = new AccessPackageResourceRole();
$accessPackageResourceRole->setOriginId('4');

$accessPackageResourceRole->setOriginSystem('SharePointOnline');

$accessPackageResourceRoleAccessPackageResource = new AccessPackageResource();
$accessPackageResourceRoleAccessPackageResource->setId('53c71803-a0a8-4777-aecc-075de8ee3991');


$accessPackageResourceRole->setAccessPackageResource($accessPackageResourceRoleAccessPackageResource);

$requestBody->setAccessPackageResourceRole($accessPackageResourceRole);
$accessPackageResourceScope = new AccessPackageResourceScope();
$accessPackageResourceScope->setId('5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33');

$accessPackageResourceScope->setOriginId('https://microsoft.sharepoint.com/portals/Community');

$accessPackageResourceScope->setOriginSystem('SharePointOnline');


$requestBody->setAccessPackageResourceScope($accessPackageResourceScope);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackagesById('accessPackage-id')->accessPackageResourceRoleScopes()->post($requestBody);


```