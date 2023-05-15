---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessReview();
$requestBody->setDisplayName('TestReview new name');



$result = $graphServiceClient->accessReviewsById('accessReview-id')->patch($requestBody);


```