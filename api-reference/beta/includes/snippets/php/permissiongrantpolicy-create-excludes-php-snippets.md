---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PermissionGrantConditionSet;
use Microsoft\Graph\Beta\Generated\Models\PermissionType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PermissionGrantConditionSet();
$requestBody->setPermissionType(new PermissionType('delegated'));
$requestBody->setResourceApplication('00000003-0000-0000-c000-000000000000');

$result = $graphServiceClient->policies()->permissionGrantPolicies()->byPermissionGrantPolicyId('permissionGrantPolicy-id')->excludes()->post($requestBody)->wait();

```