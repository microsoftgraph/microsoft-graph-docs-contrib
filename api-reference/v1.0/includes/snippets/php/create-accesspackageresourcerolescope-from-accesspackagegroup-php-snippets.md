---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageResourceRoleScope();
$role = new AccessPackageResourceRole();
$role->setId('748f8431-c7c6-404d-8564-df67aa8cfc5e');
$role->setDisplayName('Member');
$role->setOriginSystem('AadGroup');
$role->setOriginId('Member_0282e19d-bf41-435d-92a4-99bab93af305');
$roleResource = new AccessPackageResource();
$roleResource->setId('b16e0e71-17b4-4ebd-a3cd-8a468542e418');
$roleResource->setDisplayName('example group');
$roleResource->setDescription('a group whose members are to be assigned via an access package');
$roleResource->setOriginId('0282e19d-bf41-435d-92a4-99bab93af305');
$roleResource->setOriginSystem('AadGroup');
$role->setResource($roleResource);
$requestBody->setRole($role);
$scope = new AccessPackageResourceScope();
$scope->setId('83b3e3e9-c8b3-481b-ad80-53e29d1eda9c');
$scope->setDisplayName('Root');
$scope->setDescription('Root Scope');
$scope->setOriginId('0282e19d-bf41-435d-92a4-99bab93af305');
$scope->setOriginSystem('AadGroup');
$scope->setIsRootScope(true);
$requestBody->setScope($scope);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->resourceRoleScopes()->post($requestBody)->wait();

```