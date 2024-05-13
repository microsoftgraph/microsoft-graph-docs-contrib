---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessPackageResourceRoleScope;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageResourceRoleScope();
$additionalData = [
	'role' => [
		'originId' => 'Eligible',
		'displayName' => 'Eligible Member',
		'originSystem' => 'DirectoryRole',
		'resource' => [
			'id' => 'ea036095-57a6-4c90-a640-013edf151eb1',
		],
	],
	'scope' => [
		'description' => 'Root Scope',
		'displayName' => 'Root',
		'isRootScope' => true,
		'originSystem' => 'DirectoryRole',
		'originId' => 'c4e39bd9-1100-46d3-8c65-fb160da0071f',
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->accessPackageResourceRoleScopes()->post($requestBody)->wait();

```