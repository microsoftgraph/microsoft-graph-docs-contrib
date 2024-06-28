---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AdministrativeUnit;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AdministrativeUnit();
$requestBody->setDisplayName('Executive Division');
$requestBody->setDescription('Executive division administration');
$requestBody->setIsMemberManagementRestricted(true);

$result = $graphServiceClient->administrativeUnits()->post($requestBody)->wait();

```