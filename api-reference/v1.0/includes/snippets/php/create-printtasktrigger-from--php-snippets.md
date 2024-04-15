---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\PrintTaskTrigger;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PrintTaskTrigger();
$requestBody->setEvent(new PrintEvent('jobStarted'));
$additionalData = [
	'definition@odata.bind' => 'https://graph.microsoft.com/v1.0/print/taskDefinitions/{taskDefinitionId}',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->escapedPrint()->printers()->byPrinterId('printer-id')->taskTriggers()->post($requestBody)->wait();

```