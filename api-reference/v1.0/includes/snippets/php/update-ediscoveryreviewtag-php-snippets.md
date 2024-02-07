---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EdiscoveryReviewTag();
$requestBody->setDisplayName('My tag API 2');
$requestBody->setDescription('Use Graph API to create tags (updated)');

$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->tags()->byEdiscoveryReviewTagId('ediscoveryReviewTag-id')->patch($requestBody)->wait();

```