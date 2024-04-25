---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->accessReviews()->byAccessReviewId('accessReview-id')->reviewers()->byAccessReviewReviewerId('accessReviewReviewer-id')->delete()->wait();

```