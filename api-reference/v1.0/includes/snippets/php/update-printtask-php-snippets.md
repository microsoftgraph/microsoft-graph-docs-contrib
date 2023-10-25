---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PrintTask();
$status = new PrintTaskStatus();
$status->setState(new PrintTaskProcessingState('completed'));
$status->setDescription('completed');
$requestBody->setStatus($status);

$result = $graphServiceClient->escapedPrint()->taskDefinitions()->byPrintTaskDefinitionId('printTaskDefinition-id')->tasks()->byPrintTaskId('printTask-id')->patch($requestBody)->wait();

```