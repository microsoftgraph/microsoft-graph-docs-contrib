---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IndustryData\InboundApiFlow;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InboundApiFlow();
$requestBody->setOdataType('#microsoft.graph.industryData.inboundApiFlow');
$requestBody->setDisplayName('Updated flow name');

$result = $graphServiceClient->external()->industryData()->inboundFlows()->byInboundFlowId('inboundFlow-id')->patch($requestBody)->wait();

```