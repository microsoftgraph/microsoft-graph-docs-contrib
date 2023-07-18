---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DismissPostRequestBody();
$requestBody->setDismissReason('Recommendations is not relevant for my organization because...');



$result = $graphServiceClient->directory()->recommendations()->byRecommendationId('recommendation-id')->dismiss()->post($requestBody);


```