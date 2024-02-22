---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceAppManagement()->managedAppPolicies()->byManagedAppPolicyId('managedAppPolicy-id')->get()->wait();

```