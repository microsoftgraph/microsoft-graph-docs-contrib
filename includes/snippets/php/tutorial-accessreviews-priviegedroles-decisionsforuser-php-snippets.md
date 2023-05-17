---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Decision();
$additionalData = [
		'decision' => 'Deny', 
		'justification' => 'Aline Dupuy should join an allowed group to maintain access to the User Administrator role. For more details, refer to the company policy \'#132487: Privileged roles\'', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->identityGovernance()->accessReviews()->definitions()->byDefinitionId('accessReviewScheduleDefinition-id')->instances()->byInstanceId('accessReviewInstance-id')->decisions()->byDecisionId('accessReviewInstanceDecisionItem-id')->post($requestBody);


```