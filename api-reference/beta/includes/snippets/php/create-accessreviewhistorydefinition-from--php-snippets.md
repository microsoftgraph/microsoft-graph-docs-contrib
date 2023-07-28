---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewHistoryDefinition();
$requestBody->setDisplayName('Last quarter\'s group reviews April 2021');

$requestBody->setDecisions([new AccessReviewHistoryDecisionFilter('approve'),new AccessReviewHistoryDecisionFilter('deny'),new AccessReviewHistoryDecisionFilter('dontKnow'),new AccessReviewHistoryDecisionFilter('notReviewed'),new AccessReviewHistoryDecisionFilter('notNotified'),	]);

$requestBody->setReviewHistoryPeriodStartDateTime(new \DateTime('2021-01-01T00:00:00Z'));

$requestBody->setReviewHistoryPeriodEndDateTime(new \DateTime('2021-04-30T23:59:59Z'));

$scopesAccessReviewScope1 = new AccessReviewQueryScope();
$scopesAccessReviewScope1->setOdataType('#microsoft.graph.accessReviewQueryScope');

$scopesAccessReviewScope1->setQueryType('MicrosoftGraph');

$scopesAccessReviewScope1->setQuery('/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, \'accessPackageAssignments\')');

$scopesAccessReviewScope1->setQueryRoot(null);


$scopesArray []= $scopesAccessReviewScope1;
$scopesAccessReviewScope2 = new AccessReviewQueryScope();
$scopesAccessReviewScope2->setOdataType('#microsoft.graph.accessReviewQueryScope');

$scopesAccessReviewScope2->setQueryType('MicrosoftGraph');

$scopesAccessReviewScope2->setQuery('/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, \'/groups\')');

$scopesAccessReviewScope2->setQueryRoot(null);


$scopesArray []= $scopesAccessReviewScope2;
$requestBody->setScopes($scopesArray);




$result = $graphServiceClient->identityGovernance()->accessReviews()->historyDefinitions()->post($requestBody);


```