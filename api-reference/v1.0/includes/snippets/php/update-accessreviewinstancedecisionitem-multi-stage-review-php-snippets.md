---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessReviewInstanceDecisionItem();
$requestBody->setDecision('Approve');

$requestBody->setJustification('This person is still on my team');



$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->byDefinitionId('accessReviewScheduleDefinition-id')->instances()->byInstanceId('accessReviewInstance-id')->stages()->byStageId('accessReviewStage-id')->decisions()->byDecisionId('accessReviewInstanceDecisionItem-id')->patch($requestBody);


```