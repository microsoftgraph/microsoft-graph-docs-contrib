---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AdministrativeUnit();
$requestBody->setDisplayName('Seattle District Technical Schools');
$requestBody->setDescription('Seattle district technical schools administration');
$requestBody->setVisibility('HiddenMembership');

$result = $graphServiceClient->directory()->administrativeUnits()->post($requestBody)->wait();

```