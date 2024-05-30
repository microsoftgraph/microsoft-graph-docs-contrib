---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AuthorizationPolicy;
use Microsoft\Graph\Generated\Models\DefaultUserRolePermissions;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthorizationPolicy();
$defaultUserRolePermissions = new DefaultUserRolePermissions();
$defaultUserRolePermissions->setPermissionGrantPoliciesAssigned(['managePermissionGrantsForSelf.microsoft-user-default-low', 	]);
$requestBody->setDefaultUserRolePermissions($defaultUserRolePermissions);

$result = $graphServiceClient->policies()->authorizationPolicy()->patch($requestBody)->wait();

```