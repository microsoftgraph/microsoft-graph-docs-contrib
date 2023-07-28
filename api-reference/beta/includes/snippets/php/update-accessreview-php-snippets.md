---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReview();
$requestBody->setDisplayName('TestReview new name');



$result = $graphServiceClient->accessReviews()->byAccessReviewId('accessReview-id')->patch($requestBody);


```