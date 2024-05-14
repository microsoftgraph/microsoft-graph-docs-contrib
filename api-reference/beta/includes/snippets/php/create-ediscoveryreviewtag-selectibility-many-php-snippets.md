---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EdiscoveryReviewTag;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EdiscoveryReviewTag();
$requestBody->setDisplayName('My tag API');
$requestBody->setDescription('Use Graph API to create tags');
$requestBody->setChildSelectability(new ChildSelectability('many'));

$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->tags()->post($requestBody)->wait();

```