---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageResourceRoleScope;
use Microsoft\Graph\Generated\Models\AccessPackageResourceRole;
use Microsoft\Graph\Generated\Models\AccessPackageResource;
use Microsoft\Graph\Generated\Models\AccessPackageResourceScope;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageResourceRoleScope();
$role = new AccessPackageResourceRole();
$role->setDisplayName('Contributors');
$role->setOriginSystem('SharePointOnline');
$role->setOriginId('4');
$roleResource = new AccessPackageResource();
$roleResource->setId('53c71803-a0a8-4777-aecc-075de8ee3991');
$role->setResource($roleResource);
$requestBody->setRole($role);
$scope = new AccessPackageResourceScope();
$scope->setDisplayName('Root');
$scope->setDescription('Root Scope');
$scope->setOriginId('https://contoso.sharepoint.com/portals/Community');
$scope->setOriginSystem('SharePointOnline');
$scope->setIsRootScope(true);
$requestBody->setScope($scope);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->resourceRoleScopes()->post($requestBody)->wait();

```