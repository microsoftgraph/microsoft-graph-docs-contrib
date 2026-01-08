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
$accessPackageResourceRole->setOriginId('EligibleMember_89590e41-f49d-4792-b531-6ed6fe6cfe18');
$accessPackageResourceRole->setDisplayName('Eligible Member');
$accessPackageResourceRole->setOriginSystem('AadGroup');
$accessPackageResourceRoleAccessPackageResource = new AccessPackageResource();
$accessPackageResourceRoleAccessPackageResource->setId('b86a1828-3171-409e-8343-32a224f324a0');
$accessPackageResourceRoleAccessPackageResource->setResourceType('O365 Group');
$accessPackageResourceRoleAccessPackageResource->setOriginId('bcfae74a-91a6-46e9-99bf-89d6487cc3f3');
$accessPackageResourceRoleAccessPackageResource->setOriginSystem('AadGroup');
$accessPackageResourceRole->setAccessPackageResource($accessPackageResourceRoleAccessPackageResource);
$requestBody->setAccessPackageResourceRole($accessPackageResourceRole);
$accessPackageResourceScope = new AccessPackageResourceScope();
$accessPackageResourceScope->setOriginId('bcfae74a-91a6-46e9-99bf-89d6487cc3f3');
$accessPackageResourceScope->setOriginSystem('AadGroup');
$requestBody->setAccessPackageResourceScope($accessPackageResourceScope);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->accessPackageResourceRoleScopes()->post($requestBody)->wait();

```