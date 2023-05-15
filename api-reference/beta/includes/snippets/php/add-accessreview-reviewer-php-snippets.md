---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessReviewReviewer();
$requestBody->setId('006111db-0810-4494-a6df-904d368bd81b');



$result = $graphServiceClient->accessReviewsById('accessReview-id')->reviewers()->post($requestBody);


```