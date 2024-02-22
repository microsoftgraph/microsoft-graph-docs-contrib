---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->accessReviews()->byAccessReviewId('accessReview-id')->myDecisions()->get()->wait();

```