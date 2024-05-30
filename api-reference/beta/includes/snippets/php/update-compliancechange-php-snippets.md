---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\ComplianceChange;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ComplianceChange();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.complianceChange');
$requestBody->setIsRevoked(true);

$result = $graphServiceClient->admin()->windows()->updates()->updatePolicies()->byUpdatePolicyId('updatePolicy-id')->complianceChanges()->byComplianceChangeId('complianceChange-id')->patch($requestBody)->wait();

```