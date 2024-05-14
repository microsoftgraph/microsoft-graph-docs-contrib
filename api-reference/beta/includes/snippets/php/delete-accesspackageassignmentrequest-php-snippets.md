---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentRequests()->byAccessPackageAssignmentRequestId('accessPackageAssignmentRequest-id')->delete()->wait();

```