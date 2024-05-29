---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Ediscovery\ReviewSet;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReviewSet();
$requestBody->setDisplayName('My Reviewset 3');

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->reviewSets()->post($requestBody)->wait();

```