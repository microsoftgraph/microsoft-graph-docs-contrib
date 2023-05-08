---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PrintTask();
$status = new PrintTaskStatus();
$status->setState(new PrintTaskProcessingState('completed'));

$status->setDescription('completed');


$requestBody->setStatus($status);


$result = $graphServiceClient->print()->taskDefinitionsById('printTaskDefinition-id')->tasksById('printTask-id')->patch($requestBody);


```