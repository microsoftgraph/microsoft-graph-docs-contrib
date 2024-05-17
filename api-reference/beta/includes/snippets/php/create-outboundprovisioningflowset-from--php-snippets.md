---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OutboundProvisioningFlowSet;
use Microsoft\Graph\Generated\Models\BasicFilter;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OutboundProvisioningFlowSet();
$requestBody->setOdataType('#microsoft.graph.industryData.outboundProvisioningFlowSet');
$requestBody->setDisplayName('Outbound Provisioning Flow Test');
$filter = new BasicFilter();
$filter->setOdataType('#microsoft.graph.industryData.basicFilter');
$filter->setAttribute(new FilterOptions('orgExternalId'));
$filter->setIn(['Quarter', 'Demo', 	]);
$requestBody->setFilter($filter);

$result = $graphServiceClient->external()->industryData()->outboundProvisioningFlowSets()->post($requestBody)->wait();

```