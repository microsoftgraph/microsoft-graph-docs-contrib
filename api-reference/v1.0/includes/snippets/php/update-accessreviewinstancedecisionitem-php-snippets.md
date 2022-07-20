---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessReviewInstanceDecisionItem();
$requestBody->setDecision('Approve');

$requestBody->setJustification('Kathleen still needs access to the Marketing group as she works in the Marketing organization.');



$graphServiceClient->identityGovernance()->accessReviews()->definitionsById('accessReviewScheduleDefinition-id')->instancesById('accessReviewInstance-id')->decisionsById('accessReviewInstanceDecisionItem-id')->patch($requestBody);


```