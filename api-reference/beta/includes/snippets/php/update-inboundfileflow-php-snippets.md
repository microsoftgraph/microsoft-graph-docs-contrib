---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new InboundFlow();
$requestBody->set@odatatype('#microsoft.graph.industryData.inboundFlow');

$requestBody->setDisplayName('My Inbound Flow');

$requestBody->setEffectiveDateTime(new DateTime('2022-03-12T16:40:46.924769+05:30'));

$requestBody->setExpirationDateTime(new DateTime('2023-03-12T16:40:46.924769+05:30'));



$result = $graphServiceClient->external()->industryData()->inboundFlowsById('inboundFlow-id')->patch($requestBody);


```