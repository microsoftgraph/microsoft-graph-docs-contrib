---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TodoTask;
use Microsoft\Graph\Beta\Generated\Models\LinkedResource;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TodoTask();
$requestBody->setTitle('A new task');
$requestBody->setCategories(['Important', 	]);
$linkedResourcesLinkedResource1 = new LinkedResource();
$linkedResourcesLinkedResource1->setWebUrl('http://microsoft.com');
$linkedResourcesLinkedResource1->setApplicationName('Microsoft');
$linkedResourcesLinkedResource1->setDisplayName('Microsoft');
$linkedResourcesArray []= $linkedResourcesLinkedResource1;
$requestBody->setLinkedResources($linkedResourcesArray);


$result = $graphServiceClient->me()->todo()->lists()->byTodoTaskListId('todoTaskList-id')->tasks()->post($requestBody)->wait();

```