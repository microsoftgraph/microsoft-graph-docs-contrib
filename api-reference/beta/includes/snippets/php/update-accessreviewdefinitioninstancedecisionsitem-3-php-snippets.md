---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessReviewInstanceDecisionItem;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewInstanceDecisionItem();
$requestBody->setApplyResult('AppliedSuccessfully');
$additionalData = [
	'applyDescription' => 'Completed by John Doe',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->byAccessReviewScheduleDefinitionId('accessReviewScheduleDefinition-id')->instances()->byAccessReviewInstanceId('accessReviewInstance-id')->decisions()->byAccessReviewInstanceDecisionItemId('accessReviewInstanceDecisionItem-id')->patch($requestBody)->wait();

```