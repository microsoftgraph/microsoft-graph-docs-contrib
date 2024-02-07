---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DismissPostRequestBody();
$requestBody->setUserIds(['4628e7df-dff3-407c-a08f-75f08c0806dc', 	]);

$graphServiceClient->identityProtection()->riskyUsers()->dismiss()->post($requestBody)->wait();

```