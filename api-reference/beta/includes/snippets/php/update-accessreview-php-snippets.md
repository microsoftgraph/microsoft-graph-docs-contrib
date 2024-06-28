---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessReview;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReview();
$requestBody->setDisplayName('TestReview new name');

$result = $graphServiceClient->accessReviews()->byAccessReviewId('accessReview-id')->patch($requestBody)->wait();

```