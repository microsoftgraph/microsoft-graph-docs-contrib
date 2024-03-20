---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Permission();
$requestBody->setRoles(['read', 	]);

$result = $graphServiceClient->sites()->bySiteId('site-id')->permissions()->byPermissionId('permission-id')->patch($requestBody)->wait();

```