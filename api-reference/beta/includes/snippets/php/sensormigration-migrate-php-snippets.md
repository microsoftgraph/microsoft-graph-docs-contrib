---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\Identities\SensorMigration\MicrosoftGraphSecurityMigrate\MigratePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MigratePostRequestBody();
$requestBody->setSensorIds(['fdce0c43-15e8-e322-7656-aff297505af5', 'a1b2c3d4-e5f6-7890-abcd-ef1234567890', 	]);

$result = $graphServiceClient->security()->identities()->sensorMigration()->microsoftGraphSecurityMigrate()->post($requestBody)->wait();

```