---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EntraIdProtectionRiskyUserApproval;
use Microsoft\Graph\Beta\Generated\Models\RiskLevel;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EntraIdProtectionRiskyUserApproval();
$requestBody->setOdataType('#microsoft.graph.entraIdProtectionRiskyUserApproval');
$requestBody->setId('EntraIdProtectionRiskyUserApproval');
$requestBody->setIsApprovalRequired(true);
$requestBody->setMinimumRiskLevel(new RiskLevel('medium'));

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->controlConfigurations()->byControlConfigurationId('controlConfiguration-id')->put($requestBody)->wait();

```