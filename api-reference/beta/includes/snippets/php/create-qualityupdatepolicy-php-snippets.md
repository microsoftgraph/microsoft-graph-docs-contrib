---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\QualityUpdatePolicy;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\ApprovalRule;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\QualityUpdateApprovalRule;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\QualityUpdateClassification;
use Microsoft\Graph\Beta\Generated\Models\WindowsUpdates\QualityUpdateCadence;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new QualityUpdatePolicy();
$requestBody->setOdataType('#microsoft.graph.windowsUpdates.qualityUpdatePolicy');
$requestBody->setDisplayName('Patch Tuesday 123');
$requestBody->setDescription('Testing Patch Tuesday in test environment');
$approvalRulesApprovalRule1 = new QualityUpdateApprovalRule();
$approvalRulesApprovalRule1->setOdataType('microsoft.graph.windowsUpdates.qualityUpdateApprovalRule');
$approvalRulesApprovalRule1->setDeferralInDays(0);
$approvalRulesApprovalRule1->setClassification(new QualityUpdateClassification('nonSecurity'));
$approvalRulesApprovalRule1->setCadence(new QualityUpdateCadence('outOfBand'));
$approvalRulesArray []= $approvalRulesApprovalRule1;
$requestBody->setApprovalRules($approvalRulesArray);


$result = $graphServiceClient->admin()->windows()->updates()->policies()->post($requestBody)->wait();

```