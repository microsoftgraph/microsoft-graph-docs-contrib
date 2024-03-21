---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentResourceRoles()->byAccessPackageAssignmentResourceRoleId('accessPackageAssignmentResourceRole-id')->get()->wait();

```