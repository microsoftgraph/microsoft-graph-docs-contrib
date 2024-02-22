---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/v1.0/groups/{id}');

$graphServiceClient->directory()->administrativeUnits()->byAdministrativeUnitId('administrativeUnit-id')->members()->ref()->post($requestBody)->wait();

```