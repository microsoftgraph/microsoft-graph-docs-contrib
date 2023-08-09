---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageResourceRoleScope();
$role = new AccessPackageResourceRole();
$role->setId('6646a29e-da03-49f6-bcd9-dec124492de3');

$role->setDisplayName('Contributors');

$Role->setDescription(null);

$role->setOriginSystem('SharePointOnline');

$role->setOriginId('4');

$roleResource = new AccessPackageResource();
$roleResource->setId('53c71803-a0a8-4777-aecc-075de8ee3991');


$role->setResource($roleResource);

$requestBody->setRole($role);
$scope = new AccessPackageResourceScope();
$scope->setId('5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33');

$scope->setDisplayName('Root');

$scope->setDescription('Root Scope');

$scope->setOriginId('https://contoso.sharepoint.com/portals/Community');

$scope->setOriginSystem('SharePointOnline');

$scope->setIsRootScope(true);


$requestBody->setScope($scope);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->resourceRoleScopes()->post($requestBody);


```