---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Domain();
$requestBody->setId('contoso.com');

$result = $graphServiceClient->domains()->post($requestBody)->wait();

```