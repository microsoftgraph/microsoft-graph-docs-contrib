---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\InsiderRiskyUserApproval;
use Microsoft\Graph\Beta\Generated\Models\PurviewInsiderRiskManagementLevel;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InsiderRiskyUserApproval();
$requestBody->setOdataType('#microsoft.graph.insiderRiskyUserApproval');
$requestBody->setId('insiderRiskyUserApproval');
$requestBody->setIsApprovalRequired(true);
$requestBody->setMinimumRiskLevel(new PurviewInsiderRiskManagementLevel('elevated'));

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->controlConfigurations()->byControlConfigurationId('controlConfiguration-id')->put($requestBody)->wait();

```