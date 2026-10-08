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
$role->setId('055c76c1-a466-4f1a-9279-4a2ccaa7ac3e');
$role->setOriginId('/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475');
$role->setDisplayName('Access Review Operator Service Role');
$role->setDescription('Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process.');
$roleResource = new AccessPackageResource();
$roleResource->setId('c347ca9b-a9cc-4df9-bc3c-00c8e0297692');
$roleResource->setDescription('test-mgmtgroup');
$roleResource->setDisplayName('test-mgmtgroup');
$roleResource->setOriginId('/providers/Microsoft.Management/managementGroups/test-mgmtgroup');
$roleResource->setOriginSystem('AzureResources');
$additionalData = [
	'resourceType' => 'ManagementGroup',
];
$roleResource->setAdditionalData($additionalData);
$role->setResource($roleResource);
$role->setOriginSystem('AzureResources');
$role->setType(new RoleType('eligible'));
$requestBody->setRole($role);
$scope = new AccessPackageResourceScope();
$scope->setId('338613b3-b410-4c6d-b5e9-45590bc8a357');
$scope->setDisplayName('Root');
$scope->setDescription('Root Scope');
$scope->setIsRootScope(true);
$scope->setOriginId('/providers/Microsoft.Management/managementGroups/test-mgmtgroup');
$scope->setOriginSystem('AzureResources');
$requestBody->setScope($scope);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->resourceRoleScopes()->post($requestBody)->wait();

```