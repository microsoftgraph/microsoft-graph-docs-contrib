---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);


$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->byDefinitionId('accessReviewScheduleDefinition-id')->instances()->byInstanceId('accessReviewInstance-id')->decisions()->byDecisionId('accessReviewInstanceDecisionItem-id')->get();


```