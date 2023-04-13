---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new LinkedResource();
$requestBody->set@odatatype('#microsoft.graph.linkedResource');

$requestBody->setWebUrl('http://microsoft.com');

$requestBody->setApplicationName('Microsoft');

$requestBody->setDisplayName('Microsoft');



$result = $graphServiceClient->me()->todo()->listsById('todoTaskList-id')->tasksById('todoTask-id')->linkedResourcesById('linkedResource-id')->patch($requestBody);


```