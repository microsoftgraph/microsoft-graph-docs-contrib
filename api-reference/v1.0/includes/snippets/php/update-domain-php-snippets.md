---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Domain;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Domain();
$requestBody->setIsDefault(true);
$requestBody->setSupportedServices(['Email', 'OfficeCommunicationsOnline', 	]);

$result = $graphServiceClient->domains()->byDomainId('domain-id')->patch($requestBody)->wait();

```