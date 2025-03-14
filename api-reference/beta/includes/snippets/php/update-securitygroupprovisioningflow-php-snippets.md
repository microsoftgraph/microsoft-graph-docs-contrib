---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\SecurityGroupProvisioningFlow;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\SecurityGroupCreationOptions;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SecurityGroupProvisioningFlow();
$requestBody->setOdataType('#microsoft.graph.industryData.securityGroupProvisioningFlow');
$creationOptions = new SecurityGroupCreationOptions();
$creationOptions->setCreateBasedOnRoleGroup(true);
$creationOptions->setCreateBasedOnOrgPlusRoleGroup(true);
$requestBody->setCreationOptions($creationOptions);

$result = $graphServiceClient->external()->industryData()->outboundProvisioningFlowSets()->byOutboundProvisioningFlowSetId('outboundProvisioningFlowSet-id')->provisioningFlows()->byProvisioningFlowId('provisioningFlow-id')->patch($requestBody)->wait();

```