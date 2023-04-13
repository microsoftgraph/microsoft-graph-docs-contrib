---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TodoTask();
$requestBody->setTitle('A new task');

$requestBody->setCategories(['Important', ]);

$linkedResourcesLinkedResource1 = new LinkedResource();
$linkedResourcesLinkedResource1->setWebUrl('http://microsoft.com');

$linkedResourcesLinkedResource1->setApplicationName('Microsoft');

$linkedResourcesLinkedResource1->setDisplayName('Microsoft');


$linkedResourcesArray []= $linkedResourcesLinkedResource1;
$requestBody->setLinkedResources($linkedResourcesArray);




$result = $graphServiceClient->me()->todo()->listsById('todoTaskList-id')->tasks()->post($requestBody);


```