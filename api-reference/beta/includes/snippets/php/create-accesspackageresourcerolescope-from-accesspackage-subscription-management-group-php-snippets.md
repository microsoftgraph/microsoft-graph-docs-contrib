---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageResourceRoleScope;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageResourceRole;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageResource;
use Microsoft\Graph\Beta\Generated\Models\RoleType;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageResourceScope;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageResourceRoleScope();
$accessPackageResourceRole = new AccessPackageResourceRole();
$accessPackageResourceRole->setId('055c76c1-a466-4f1a-9279-4a2ccaa7ac3e');
$accessPackageResourceRole->setOriginId('/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475');
$accessPackageResourceRole->setDisplayName('Access Review Operator Service Role');
$accessPackageResourceRole->setDescription('Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process.');
$accessPackageResourceRoleAccessPackageResource = new AccessPackageResource();
$accessPackageResourceRoleAccessPackageResource->setId('c347ca9b-a9cc-4df9-bc3c-00c8e0297692');
$accessPackageResourceRoleAccessPackageResource->setDescription('test-mgmtgroup');
$accessPackageResourceRoleAccessPackageResource->setDisplayName('test-mgmtgroup');
$accessPackageResourceRoleAccessPackageResource->setResourceType('ManagementGroup');
$accessPackageResourceRoleAccessPackageResource->setOriginId('/providers/Microsoft.Management/managementGroups/test-mgmtgroup');
$accessPackageResourceRoleAccessPackageResource->setOriginSystem('AzureResources');
$accessPackageResourceRole->setAccessPackageResource($accessPackageResourceRoleAccessPackageResource);
$accessPackageResourceRole->setOriginSystem('AzureResources');
$accessPackageResourceRole->setType(new RoleType('eligible'));
$requestBody->setAccessPackageResourceRole($accessPackageResourceRole);
$accessPackageResourceScope = new AccessPackageResourceScope();
$accessPackageResourceScope->setId('338613b3-b410-4c6d-b5e9-45590bc8a357');
$accessPackageResourceScope->setDisplayName('Root');
$accessPackageResourceScope->setDescription('Root Scope');
$accessPackageResourceScope->setOriginId('/providers/Microsoft.Management/managementGroups/test-mgmtgroup');
$accessPackageResourceScope->setOriginSystem('AzureResources');
$accessPackageResourceScope->setIsRootScope(true);
$requestBody->setAccessPackageResourceScope($accessPackageResourceScope);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->accessPackageResourceRoleScopes()->post($requestBody)->wait();

```