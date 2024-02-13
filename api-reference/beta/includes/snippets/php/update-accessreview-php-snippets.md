---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReview();
$requestBody->setDisplayName('TestReview new name');

$result = $graphServiceClient->accessReviews()->byAccessReviewId('accessReview-id')->patch($requestBody)->wait();

```