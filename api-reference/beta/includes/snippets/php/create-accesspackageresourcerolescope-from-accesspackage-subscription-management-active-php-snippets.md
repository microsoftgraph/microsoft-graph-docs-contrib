---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageResourceRoleScope;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageResourceRole;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageResource;
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
$additionalData = [
	'type' => 'active',
];
$accessPackageResourceRole->setAdditionalData($additionalData);
$requestBody->setAccessPackageResourceRole($accessPackageResourceRole);
$accessPackageResourceScope = new AccessPackageResourceScope();
$accessPackageResourceScope->setId('c66c1e22-1093-46fb-a8a8-c0e334113ca4');
$accessPackageResourceScope->setDescription('Root');
$accessPackageResourceScope->setDisplayName('Root');
$accessPackageResourceScope->setIsRootScope(true);
$accessPackageResourceScope->setOriginSystem('AzureResources');
$accessPackageResourceScope->setOriginId('/subscriptions/828b526f-c769-4b19-9797-734b4843b978');
$requestBody->setAccessPackageResourceScope($accessPackageResourceScope);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->accessPackageResourceRoleScopes()->post($requestBody)->wait();

```