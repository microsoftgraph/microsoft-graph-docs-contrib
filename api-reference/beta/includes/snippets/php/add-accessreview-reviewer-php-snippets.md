---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessReviewReviewer;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewReviewer();
$requestBody->setId('006111db-0810-4494-a6df-904d368bd81b');

$result = $graphServiceClient->accessReviews()->byAccessReviewId('accessReview-id')->reviewers()->post($requestBody)->wait();

```