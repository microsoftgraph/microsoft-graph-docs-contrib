---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageResourceEnvironments()->byAccessPackageResourceEnvironmentId('accessPackageResourceEnvironment-id')->get()->wait();

```