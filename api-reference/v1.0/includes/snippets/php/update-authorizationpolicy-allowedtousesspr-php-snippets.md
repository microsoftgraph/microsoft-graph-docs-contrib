---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthorizationPolicy();
$requestBody->setAllowedToUseSSPR(true);

$result = $graphServiceClient->policies()->authorizationPolicy()->patch($requestBody)->wait();

```