---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ServicePrincipal;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ServicePrincipal();
$requestBody->setAppId('fc876dd1-6bcb-4304-b9b6-18ddf1526b62');

$result = $graphServiceClient->servicePrincipals()->post($requestBody)->wait();

```