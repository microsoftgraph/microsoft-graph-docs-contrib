---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\User;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new User();
$requestBody->setBusinessPhones(['+1 425 555 0109', 	]);
$requestBody->setOfficeLocation('18/2111');

$result = $graphServiceClient->me()->patch($requestBody)->wait();

```