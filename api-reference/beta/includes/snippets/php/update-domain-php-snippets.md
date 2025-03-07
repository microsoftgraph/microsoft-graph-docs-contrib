---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Domain;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Domain();
$requestBody->setIsDefault(true);
$requestBody->setSupportedServices(['Email', 'OfficeCommunicationsOnline', 'CustomUrlDomain', 	]);

$result = $graphServiceClient->domains()->byDomainId('domain-id')->patch($requestBody)->wait();

```