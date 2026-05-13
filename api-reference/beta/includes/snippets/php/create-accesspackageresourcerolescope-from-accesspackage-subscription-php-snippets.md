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
$accessPackageResourceRole->setOriginId('/subscriptions/828b526f-c769-4b19-9797-734b4843b978/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475');
$accessPackageResourceRole->setDisplayName('Access Review Operator Service Role');
$accessPackageResourceRole->setDescription('Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process.');
$accessPackageResourceRoleAccessPackageResource = new AccessPackageResource();
$accessPackageResourceRoleAccessPackageResource->setId('b09a0288-a83e-4ae6-8a53-bc09aeb966ea');
$accessPackageResourceRoleAccessPackageResource->setDescription('Dev');
$accessPackageResourceRoleAccessPackageResource->setDisplayName('Dev');
$accessPackageResourceRoleAccessPackageResource->setResourceType('Subscription');
$accessPackageResourceRoleAccessPackageResource->setOriginId('/subscriptions/828b526f-c769-4b19-9797-734b4843b978');
$accessPackageResourceRoleAccessPackageResource->setOriginSystem('AzureResources');
$accessPackageResourceRole->setAccessPackageResource($accessPackageResourceRoleAccessPackageResource);
$accessPackageResourceRole->setOriginSystem('AzureResources');
$accessPackageResourceRole->setType(new RoleType('active'));
$requestBody->setAccessPackageResourceRole($accessPackageResourceRole);
$accessPackageResourceScope = new AccessPackageResourceScope();
$accessPackageResourceScope->setId('e1e0ec8c-472d-4ec5-a8f9-29e0bc275640');
$accessPackageResourceScope->setDescription('/resourceGroups/rg');
$accessPackageResourceScope->setDisplayName('/resourceGroups/rg');
$accessPackageResourceScope->setIsRootScope(false);
$accessPackageResourceScope->setOriginSystem('AzureResources');
$accessPackageResourceScope->setOriginId('/subscriptions/828b526f-c769-4b19-9797-734b4843b978/resourceGroups/rg');
$requestBody->setAccessPackageResourceScope($accessPackageResourceScope);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->accessPackageResourceRoleScopes()->post($requestBody)->wait();

```