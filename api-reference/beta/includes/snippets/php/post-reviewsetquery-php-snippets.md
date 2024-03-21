---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReviewSetQuery();
$requestBody->setDisplayName('My Query 1');
$requestBody->setQuery('(subject:\"Quarterly Financials\")');

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->reviewSets()->byReviewSetId('reviewSet-id')->queries()->post($requestBody)->wait();

```