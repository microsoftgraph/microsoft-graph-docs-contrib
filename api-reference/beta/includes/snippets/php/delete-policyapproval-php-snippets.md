---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->admin()->windows()->updates()->policies()->byPolicyId('policy-id')->approvals()->byPolicyApprovalId('policyApproval-id')->delete()->wait();

```