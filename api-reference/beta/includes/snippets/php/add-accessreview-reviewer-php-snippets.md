---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessReviewReviewer;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewReviewer();
$requestBody->setId('006111db-0810-4494-a6df-904d368bd81b');

$result = $graphServiceClient->accessReviews()->byAccessReviewId('accessReview-id')->reviewers()->post($requestBody)->wait();

```