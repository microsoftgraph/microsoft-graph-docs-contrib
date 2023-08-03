---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PostponePostRequestBody();
$requestBody->setPostponeUntilDateTime(new \DateTime('2023-03-01T09:40:39.0420371Z'));



$result = $graphServiceClient->directory()->recommendations()->byRecommendationId('recommendation-id')->impactedResources()->byImpactedResourceId('impactedResource-id')->postpone()->post($requestBody);


```