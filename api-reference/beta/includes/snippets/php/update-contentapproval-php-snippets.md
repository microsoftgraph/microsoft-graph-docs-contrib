---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\ContentApproval;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ContentApproval();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.contentApproval');
$requestBody->setIsRevoked(true);

$result = $graphServiceClient->admin()->windows()->updates()->updatePolicies()->byUpdatePolicyId('updatePolicy-id')->complianceChanges()->byComplianceChangeId('complianceChange-id')->patch($requestBody)->wait();

```