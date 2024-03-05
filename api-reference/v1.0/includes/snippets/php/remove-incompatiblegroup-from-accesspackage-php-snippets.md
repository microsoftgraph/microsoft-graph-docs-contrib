---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identityGovernance()->entitlementManagement()->accessPackages()->byAccessPackageId('accessPackage-id')->incompatibleGroups()->byGroupId('group-id')->ref()->delete()->wait();

```