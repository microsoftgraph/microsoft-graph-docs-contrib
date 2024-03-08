---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReviewSetQuery();
$requestBody->setDisplayName('My Query 1 - Renamed');

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->reviewSets()->byReviewSetId('reviewSet-id')->queries()->byReviewSetQueryId('reviewSetQuery-id')->patch($requestBody)->wait();

```