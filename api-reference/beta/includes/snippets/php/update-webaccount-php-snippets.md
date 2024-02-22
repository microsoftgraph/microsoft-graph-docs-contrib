---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WebAccount();
$requestBody->setWebUrl('https://github.com/innocenty.popov');

$result = $graphServiceClient->me()->profile()->webAccounts()->byWebAccountId('webAccount-id')->patch($requestBody)->wait();

```