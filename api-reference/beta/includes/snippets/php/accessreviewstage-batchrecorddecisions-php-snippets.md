---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\AccessReviews\Definitions\Item\Instances\Item\Stages\Item\BatchRecordDecisions\BatchRecordDecisionsPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BatchRecordDecisionsPostRequestBody();
$requestBody->setDecision('Approve');
$requestBody->setJustification('All principals with access need continued access to the resource as they are on the same team.');
$requestBody->setResourceId('a5c51e59-3fcd-4a37-87a1-835c0c21488a');

$graphServiceClient->identityGovernance()->accessReviews()->definitions()->byAccessReviewScheduleDefinitionId('accessReviewScheduleDefinition-id')->instances()->byAccessReviewInstanceId('accessReviewInstance-id')->stages()->byAccessReviewStageId('accessReviewStage-id')->batchRecordDecisions()->post($requestBody)->wait();

```