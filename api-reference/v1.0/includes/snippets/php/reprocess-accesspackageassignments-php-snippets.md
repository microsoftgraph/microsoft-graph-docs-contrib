---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identityGovernance()->entitlementManagement()->assignments()->byAccessPackageAssignmentId('accessPackageAssignment-id')->reprocess()->post()->wait();

```