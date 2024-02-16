---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EscapedCase();
$requestBody->setDisplayName('My Case 1 - Renamed');
$requestBody->setDescription('Updated description');
$requestBody->setExternalId('Updated externalId');

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->patch($requestBody)->wait();

```