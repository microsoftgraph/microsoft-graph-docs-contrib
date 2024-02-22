---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentRequests()->filterByCurrentUserWithOn('target', )->get()->wait();

```