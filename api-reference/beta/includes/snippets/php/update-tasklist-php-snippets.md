---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new BaseTaskList();
$requestBody->set@odatatype('#microsoft.graph.taskList');

$requestBody->setDisplayName('Travel Plan');



$requestResult = $graphServiceClient->me()->tasks()->listsById('baseTaskList-id')->patch($requestBody);


```