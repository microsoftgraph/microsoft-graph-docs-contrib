---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AdminTodo;
use Microsoft\Graph\Generated\Models\TodoSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AdminTodo();
$requestBody->setOdataType('#microsoft.graph.adminTodo');
$settings = new TodoSettings();
$settings->setOdataType('microsoft.graph.todoSettings');
$settings->setIsPushNotificationEnabled(true);
$settings->setIsExternalJoinEnabled(false);
$settings->setIsExternalShareEnabled(true);
$requestBody->setSettings($settings);

$result = $graphServiceClient->admin()->todo()->patch($requestBody)->wait();

```