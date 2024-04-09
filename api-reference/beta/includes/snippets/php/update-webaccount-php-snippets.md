---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WebAccount;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WebAccount();
$requestBody->setWebUrl('https://github.com/innocenty.popov');

$result = $graphServiceClient->me()->profile()->webAccounts()->byWebAccountId('webAccount-id')->patch($requestBody)->wait();

```