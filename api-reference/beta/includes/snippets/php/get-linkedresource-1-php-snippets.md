---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);


$result = $graphServiceClient->me()->todo()->lists()->byListId('todoTaskList-id')->tasks()->byTaskId('todoTask-id')->linkedResources()->byLinkedResourceId('linkedResource-id')->get();


```