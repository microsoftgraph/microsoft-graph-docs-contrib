---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AdminTodo();
$requestBody->set@odatatype('#microsoft.graph.adminTodo');

$settings = new TodoSettings();
$settings->set@odatatype('microsoft.graph.todoSettings');

$settings->setIsPushNotificationEnabled(true);

$settings->setIsExternalJoinEnabled(false);

$settings->setIsExternalShareEnabled(true);


$requestBody->setSettings($settings);


$result = $graphServiceClient->admin()->todo()->patch($requestBody);


```