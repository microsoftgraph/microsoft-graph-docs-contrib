---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessReviewStage();
$requestBody->set@odatatype('#microsoft.graph.accessReviewStage');

$reviewers1 = new ();
$additionalData = [
'query' => '/users/1ed8ac56-4827-4733-8f80-86adc2e67db5', 
'queryType' => 'MicrosoftGraph', 
];
$reviewers1->setAdditionalData($additionalData);



$reviewersArray []= $reviewers1;
$requestBody->setReviewers($reviewersArray);


$fallbackReviewers1 = new ();
$additionalData = [
'query' => '/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e', 
'queryType' => 'MicrosoftGraph', 
];
$fallbackReviewers1->setAdditionalData($additionalData);



$fallbackReviewersArray []= $fallbackReviewers1;
$fallbackReviewers2 = new ();
$additionalData = [
'query' => '/users/1ed8ac56-4827-4733-8f80-86adc2e67db5', 
'queryType' => 'MicrosoftGraph', 
];
$fallbackReviewers2->setAdditionalData($additionalData);



$fallbackReviewersArray []= $fallbackReviewers2;
$requestBody->setFallbackReviewers($fallbackReviewersArray);




$graphServiceClient->identityGovernance()->accessReviews()->definitionsById('accessReviewScheduleDefinition-id')->instancesById('accessReviewInstance-id')->stagesById('accessReviewStage-id')->patch($requestBody);


```