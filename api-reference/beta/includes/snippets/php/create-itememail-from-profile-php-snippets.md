---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ItemEmail();
$requestBody->setAddress('Innocenty.Popov@adventureworks.com');

$result = $graphServiceClient->me()->profile()->emails()->post($requestBody)->wait();

```