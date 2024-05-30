---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WebAccount;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WebAccount();
$requestBody->setWebUrl('https://github.com/innocenty.popov');

$result = $graphServiceClient->me()->profile()->webAccounts()->byWebAccountId('webAccount-id')->patch($requestBody)->wait();

```