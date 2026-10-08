---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\AccessReviews\Definitions\Item\Instances\Item\BatchApplyCustomDataProvidedResourceDecisions\BatchApplyCustomDataProvidedResourceDecisionsPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\AccessReviewInstanceDecisionItemApplyResult;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new BatchApplyCustomDataProvidedResourceDecisionsPostRequestBody();
$requestBody->setApplyResult(new AccessReviewInstanceDecisionItemApplyResult('appliedSuccessfully'));
$requestBody->setApplyDescription('Access was removed from production application: GitHub-app.');
$requestBody->setCustomDataProvidedResourceId('5c728447-be5c-4565-b4d3-cb248b609891');

$graphServiceClient->identityGovernance()->accessReviews()->definitions()->byAccessReviewScheduleDefinitionId('accessReviewScheduleDefinition-id')->instances()->byAccessReviewInstanceId('accessReviewInstance-id')->batchApplyCustomDataProvidedResourceDecisions()->post($requestBody)->wait();

```