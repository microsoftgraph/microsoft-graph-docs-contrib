---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AdministrativeUnit;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AdministrativeUnit();
$requestBody->setDisplayName('Greater Seattle District Technical Schools');

$result = $graphServiceClient->directory()->administrativeUnits()->byAdministrativeUnitId('administrativeUnit-id')->patch($requestBody)->wait();

```