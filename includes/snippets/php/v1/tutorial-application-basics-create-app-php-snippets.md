---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$requestBody->setDisplayName('My application');

$result = $graphServiceClient->applications()->post($requestBody)->wait();

```