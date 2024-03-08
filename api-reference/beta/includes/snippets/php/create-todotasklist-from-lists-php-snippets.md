---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TodoTaskList();
$requestBody->setDisplayName('Travel items');

$result = $graphServiceClient->me()->todo()->lists()->post($requestBody)->wait();

```