---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DismissPostRequestBody();
$requestBody->setDismissReason('Application is no longer needed.');

$result = $graphServiceClient->directory()->recommendations()->byRecommendationId('recommendation-id')->impactedResources()->byImpactedResourceId('impactedResource-id')->dismiss()->post($requestBody)->wait();

```