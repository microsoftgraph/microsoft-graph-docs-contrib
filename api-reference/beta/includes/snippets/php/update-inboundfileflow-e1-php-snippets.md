---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InboundFileFlow();
$requestBody->setOdataType('#microsoft.graph.industryData.inboundFileFlow');
$requestBody->setDisplayName('Updated flow name');

$result = $graphServiceClient->external()->industryData()->inboundFlows()->byInboundFlowId('inboundFlow-id')->patch($requestBody)->wait();

```