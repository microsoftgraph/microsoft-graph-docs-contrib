---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\User;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new User();
$requestBody->setOdataType('#microsoft.graph.user');
$requestBody->setDeviceEnrollmentLimit(5);

$result = $graphServiceClient->users()->byUserId('user-id')->patch($requestBody)->wait();

```