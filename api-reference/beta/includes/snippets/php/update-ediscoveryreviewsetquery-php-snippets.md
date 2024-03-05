---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EdiscoveryReviewSetQuery();
$requestBody->setDisplayName('My Query 1 (update)');
$requestBody->setContentQuery('(Author=\"edisons\")');

$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->reviewSets()->byEdiscoveryReviewSetId('ediscoveryReviewSet-id')->queries()->byEdiscoveryReviewSetQueryId('ediscoveryReviewSetQuery-id')->patch($requestBody)->wait();

```