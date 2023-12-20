---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReviewSet();
$requestBody->setDisplayName('My Reviewset 3');

$result = $graphServiceClient->compliance()->ediscovery()->cases()->byCaseId('case-id')->reviewSets()->post($requestBody)->wait();

```