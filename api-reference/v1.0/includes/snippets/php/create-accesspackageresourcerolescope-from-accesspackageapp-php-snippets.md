---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageResourceRoleScope();
$role = new AccessPackageResourceRole();
$role->setId('cde82ecb-e461-496b-98fb-4f807c7ca640');
$role->setDisplayName('Standard User');
$role->setDescription('Standard User');
$role->setOriginSystem('AadApplication');
$role->setOriginId('a29a7690-b3c4-4ed5-96c6-f640cde06fb8');
$roleResource = new AccessPackageResource();
$roleResource->setId('5f80c0c7-a180-4521-b585-18200048a0d8');
$roleResource->setOriginId('e81d7f57-0840-45e1-894b-f505c1bdcc1f');
$roleResource->setOriginSystem('AadApplication');
$role->setResource($roleResource);
$requestBody->setRole($role);
$scope = new AccessPackageResourceScope();
$scope->setId('dbeb8772-9907-4e95-a28e-a8d70dbcda69');
$scope->setOriginId('e81d7f57-0840-45e1-894b-f505c1bdcc1f');
$scope->setOriginSystem('AadApplication');
$scope->setIsRootScope(true);
$requestBody->setScope($scope);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->resourceRoleScopes()->post($requestBody)->wait();

```