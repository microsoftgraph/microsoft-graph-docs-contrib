---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EdiscoveryCase();
$requestBody->setDisplayName('CONTOSO LITIGATION-005');
$requestBody->setDescription('Project Bazooka');
$requestBody->setExternalId('324516');

$result = $graphServiceClient->security()->cases()->ediscoveryCases()->post($requestBody)->wait();

```