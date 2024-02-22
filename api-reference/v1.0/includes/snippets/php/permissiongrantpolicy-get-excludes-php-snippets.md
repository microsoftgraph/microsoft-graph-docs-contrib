---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->policies()->permissionGrantPolicies()->byPermissionGrantPolicyId('permissionGrantPolicy-id')->excludes()->get()->wait();

```