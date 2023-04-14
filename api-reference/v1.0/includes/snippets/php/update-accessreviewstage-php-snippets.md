---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessReviewStage();
$requestBody->set@odatatype('#microsoft.graph.accessReviewStage');

$reviewersAccessReviewReviewerScope1 = new AccessReviewReviewerScope();
$reviewersAccessReviewReviewerScope1->setQuery('/users/1ed8ac56-4827-4733-8f80-86adc2e67db5');

$reviewersAccessReviewReviewerScope1->setQueryType('MicrosoftGraph');


$reviewersArray []= $reviewersAccessReviewReviewerScope1;
$requestBody->setReviewers($reviewersArray);


$fallbackReviewersAccessReviewReviewerScope1 = new AccessReviewReviewerScope();
$fallbackReviewersAccessReviewReviewerScope1->setQuery('/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e');

$fallbackReviewersAccessReviewReviewerScope1->setQueryType('MicrosoftGraph');


$fallbackReviewersArray []= $fallbackReviewersAccessReviewReviewerScope1;
$fallbackReviewersAccessReviewReviewerScope2 = new AccessReviewReviewerScope();
$fallbackReviewersAccessReviewReviewerScope2->setQuery('/users/1ed8ac56-4827-4733-8f80-86adc2e67db5');

$fallbackReviewersAccessReviewReviewerScope2->setQueryType('MicrosoftGraph');


$fallbackReviewersArray []= $fallbackReviewersAccessReviewReviewerScope2;
$requestBody->setFallbackReviewers($fallbackReviewersArray);




$result = $graphServiceClient->identityGovernance()->accessReviews()->definitionsById('accessReviewScheduleDefinition-id')->instancesById('accessReviewInstance-id')->stagesById('accessReviewStage-id')->patch($requestBody);


```