---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new User();
$requestBody->setOdataType('#microsoft.graph.user');
$requestBody->setDeviceEnrollmentLimit(5);

$result = $graphServiceClient->users()->byUserId('user-id')->patch($requestBody)->wait();

```