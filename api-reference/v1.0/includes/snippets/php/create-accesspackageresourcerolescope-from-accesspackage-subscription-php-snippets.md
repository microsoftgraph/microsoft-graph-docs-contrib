---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageResourceRoleScope;
use Microsoft\Graph\Generated\Models\AccessPackageResourceRole;
use Microsoft\Graph\Generated\Models\AccessPackageResource;
use Microsoft\Graph\Generated\Models\RoleType;
use Microsoft\Graph\Generated\Models\AccessPackageResourceScope;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageResourceRoleScope();
$role = new AccessPackageResourceRole();
$role->setOriginId('/subscriptions/828b526f-c769-4b19-9797-734b4843b978/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475');
$role->setDisplayName('Access Review Operator Service Role');
$role->setDescription('Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process.');
$roleResource = new AccessPackageResource();
$roleResource->setId('b09a0288-a83e-4ae6-8a53-bc09aeb966ea');
$roleResource->setDescription('Dev');
$roleResource->setDisplayName('Dev');
$roleResource->setOriginId('/subscriptions/828b526f-c769-4b19-9797-734b4843b978');
$roleResource->setOriginSystem('AzureResources');
$additionalData = [
	'resourceType' => 'Subscription',
];
$roleResource->setAdditionalData($additionalData);
$role->setResource($roleResource);
$role->setOriginSystem('AzureResources');
$role->setType(new RoleType('active'));
$requestBody->setRole($role);
$scope = new AccessPackageResourceScope();
$scope->setId('e1e0ec8c-472d-4ec5-a8f9-29e0bc275640');
$scope->setDescription('/resourceGroups/rg');
$scope->setDisplayName('/resourceGroups/rg');
$scope->setIsRootScope(false);
$scope->setOriginSystem('AzureResources');
$scope->setOriginId('/subscriptions/828b526f-c769-4b19-9797-734b4843b978/resourceGroups/rg');
$requestBody->setScope($scope);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->resourceRoleScopes()->post($requestBody)->wait();

```