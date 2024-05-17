---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DismissPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DismissPostRequestBody();
$requestBody->setDismissReason('Recommendations is not relevant for my organization because...');

$result = $graphServiceClient->directory()->recommendations()->byRecommendationId('recommendation-id')->dismiss()->post($requestBody)->wait();

```