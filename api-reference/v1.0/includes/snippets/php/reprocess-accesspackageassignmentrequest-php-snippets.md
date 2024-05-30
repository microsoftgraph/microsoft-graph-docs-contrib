---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identityGovernance()->entitlementManagement()->assignmentRequests()->byAccessPackageAssignmentRequestId('accessPackageAssignmentRequest-id')->reprocess()->post()->wait();

```