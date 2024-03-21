---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/beta/groups/{id}');

$graphServiceClient->administrativeUnits()->byAdministrativeUnitId('administrativeUnit-id')->members()->ref()->post($requestBody)->wait();

```