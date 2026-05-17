---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\PolicyApproval;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\ApprovalStatus;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PolicyApproval();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.policyApproval');
$requestBody->setCatalogEntryId('1d8864c1-531f-4d5b-8225-8653ef4316d8');
$requestBody->setStatus(new ApprovalStatus('approved'));

$result = $graphServiceClient->admin()->windows()->updates()->policies()->byPolicyId('policy-id')->approvals()->post($requestBody)->wait();

```