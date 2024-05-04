---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AdministrativeUnitProvisioningFlow;
use Microsoft\Graph\Generated\Models\AdminUnitCreationOptions;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AdministrativeUnitProvisioningFlow();
$requestBody->setOdataType('#microsoft.graph.industryData.administrativeUnitProvisioningFlow');
$creationOptions = new AdminUnitCreationOptions();
$creationOptions->setCreateBasedOnOrg(true);
$creationOptions->setCreateBasedOnOrgPlusroleGroup(false);
$requestBody->setCreationOptions($creationOptions);

$result = $graphServiceClient->external()->industryData()->outboundProvisioningFlowSets()->byOutboundProvisioningFlowSetId('outboundProvisioningFlowSet-id')->provisioningFlows()->byProvisioningFlowId('provisioningFlow-id')->patch($requestBody)->wait();

```