---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->directory()->recommendations()->byRecommendationId('recommendation-id')->impactedResources()->byImpactedResourceId('impactedResource-id')->get()->wait();

```