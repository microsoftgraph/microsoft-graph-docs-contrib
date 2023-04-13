---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Decision();
$additionalData = [
		'decision' => 'Approve', 
		'justification' => 'The IT Helpdesk requires continued access to the User Administrator role to manage user account support requests, lifecycle, and access to resources', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->identityGovernance()->accessReviews()->definitionsById('accessReviewScheduleDefinition-id')->instancesById('accessReviewInstance-id')->decisionsById('accessReviewInstanceDecisionItem-id')->post($requestBody);


```