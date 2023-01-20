---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MovePostRequestBody();
$requestBody->setDestinationTaskListId('AAMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNmMGRmOWNiYQAuAAAAAAAboFsPFj7gQqFxG');



$requestResult = $graphServiceClient->me()->tasks()->listsById('baseTaskList-id')->tasksById('baseTask-id')->move()->post($requestBody);


```