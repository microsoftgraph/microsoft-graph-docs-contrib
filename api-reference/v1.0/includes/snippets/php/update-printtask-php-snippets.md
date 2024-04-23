---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\PrintTask;
use Microsoft\Graph\Generated\Models\PrintTaskStatus;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PrintTask();
$status = new PrintTaskStatus();
$status->setState(new PrintTaskProcessingState('completed'));
$status->setDescription('completed');
$requestBody->setStatus($status);

$result = $graphServiceClient->escapedPrint()->taskDefinitions()->byPrintTaskDefinitionId('printTaskDefinition-id')->tasks()->byPrintTaskId('printTask-id')->patch($requestBody)->wait();

```