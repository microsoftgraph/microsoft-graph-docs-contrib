---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PrintTask;
use Microsoft\Graph\Beta\Generated\Models\PrintTaskStatus;
use Microsoft\Graph\Beta\Generated\Models\PrintTaskProcessingState;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PrintTask();
$status = new PrintTaskStatus();
$status->setState(new PrintTaskProcessingState('completed'));
$status->setDescription('completed');
$requestBody->setStatus($status);

$result = $graphServiceClient->escapedPrint()->taskDefinitions()->byPrintTaskDefinitionId('printTaskDefinition-id')->tasks()->byPrintTaskId('printTask-id')->patch($requestBody)->wait();

```