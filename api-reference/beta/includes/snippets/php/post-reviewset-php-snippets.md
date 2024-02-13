---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReviewSet();
$requestBody->setDisplayName('My Reviewset 3');

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->reviewSets()->post($requestBody)->wait();

```