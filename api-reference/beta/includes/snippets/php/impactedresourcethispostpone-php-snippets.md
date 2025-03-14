---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Directory\Recommendations\Item\ImpactedResources\Item\Postpone\PostponePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PostponePostRequestBody();
$requestBody->setPostponeUntilDateTime(new \DateTime('2023-03-01T09:40:39.0420371Z'));

$result = $graphServiceClient->directory()->recommendations()->byRecommendationId('recommendation-id')->impactedResources()->byImpactedResourceId('impactedResource-id')->postpone()->post($requestBody)->wait();

```