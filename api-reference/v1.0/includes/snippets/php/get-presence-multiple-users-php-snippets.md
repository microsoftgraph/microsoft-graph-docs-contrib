---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GetPresencesByUserIdPostRequestBody();
$requestBody->setIds(['fa8bf3dc-eca7-46b7-bad1-db199b62afc3', '66825e03-7ef5-42da-9069-724602c31f6b', 	]);

$result = $graphServiceClient->communications()->getPresencesByUserId()->post($requestBody)->wait();

```