---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->me()->pendingAccessReviewInstances()->byAccessReviewInstanceId('accessReviewInstance-id')->acceptRecommendations()->post()->wait();

```