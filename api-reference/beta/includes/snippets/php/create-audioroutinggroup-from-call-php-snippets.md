---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AudioRoutingGroup();
$requestBody->setId('oneToOne');

$requestBody->setRoutingMode(new RoutingMode('onetoone'));

$requestBody->setSources(['632899f8-2ea1-4604-8413-27bd2892079f', ]);

$requestBody->setReceivers(['550fae72-d251-43ec-868c-373732c2704f', ]);



$result = $graphServiceClient->communications()->callsById('call-id')->audioRoutingGroups()->post($requestBody);


```