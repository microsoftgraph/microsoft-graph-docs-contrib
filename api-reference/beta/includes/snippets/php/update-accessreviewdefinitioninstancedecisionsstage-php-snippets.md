---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessReviewInstanceDecisionItem;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewInstanceDecisionItem();
$requestBody->setDecision('Approve');
$requestBody->setJustification('This person is still on my team');

$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->byAccessReviewScheduleDefinitionId('accessReviewScheduleDefinition-id')->instances()->byAccessReviewInstanceId('accessReviewInstance-id')->stages()->byAccessReviewStageId('accessReviewStage-id')->decisions()->byAccessReviewInstanceDecisionItemId('accessReviewInstanceDecisionItem-id')->patch($requestBody)->wait();

```