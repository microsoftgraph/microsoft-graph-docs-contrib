---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new User();
$requestBody->setOdataType('#microsoft.graph.user');

$result = $graphServiceClient->users()->post($requestBody)->wait();

```