---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WebAccount;
use Microsoft\Graph\Generated\Models\ServiceInformation;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WebAccount();
$requestBody->setDescription('My Github contributions!');
$requestBody->setUserId('innocenty.popov');
$service = new ServiceInformation();
$service->setName('GitHub');
$service->setWebUrl('https://github.com');
$requestBody->setService($service);

$result = $graphServiceClient->me()->profile()->webAccounts()->post($requestBody)->wait();

```