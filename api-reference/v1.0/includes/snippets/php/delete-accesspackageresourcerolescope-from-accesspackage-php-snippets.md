---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->resourceRoleScopes()->byAccessPackageResourceRoleScopeId('accessPackageResourceRoleScope-id')->delete()->wait();

```