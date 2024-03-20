---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identityGovernance()->accessReviews()->definitions()->byAccessReviewScheduleDefinitionId('accessReviewScheduleDefinition-id')->delete()->wait();

```