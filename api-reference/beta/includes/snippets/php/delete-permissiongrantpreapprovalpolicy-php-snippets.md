---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->policies()->permissionGrantPreApprovalPolicies()->byPermissionGrantPreApprovalPolicyId('permissionGrantPreApprovalPolicy-id')->delete()->wait();

```