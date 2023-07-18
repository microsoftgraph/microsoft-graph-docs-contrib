---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new LinkedResource();
$requestBody->setOdataType('#microsoft.graph.linkedResource');

$requestBody->setWebUrl('http://microsoft.com');

$requestBody->setApplicationName('Microsoft');

$requestBody->setDisplayName('Microsoft');



$result = $graphServiceClient->me()->todo()->lists()->byTodoTaskListId('todoTaskList-id')->tasks()->byTodoTaskId('todoTask-id')->linkedResources()->byLinkedResourceId('linkedResource-id')->patch($requestBody);


```