---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TodoTaskList();
$requestBody->setDisplayName('Vacation Plan');



$result = $graphServiceClient->me()->todo()->listsById('todoTaskList-id')->patch($requestBody);


```