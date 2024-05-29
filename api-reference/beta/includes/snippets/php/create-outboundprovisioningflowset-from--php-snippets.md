---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\OutboundProvisioningFlowSet;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\BasicFilter;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\FilterOptions;


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