---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessReviewInstance();
$scope = new AccessReviewScope();
$scope->set@odatatype('#microsoft.graph.principalResourceMembershipsScope');

$additionalData = [
		'principalScopes' => $principalScopes1 = new ();
$		principalScopes1->set@odatatype('#microsoft.graph.accessReviewQueryScope');

$		principalScopes1->setQuery('/v1.0/users');

$		principalScopes1->setQueryType('MicrosoftGraph');


$principalScopesArray []= $principalScopes1;
$principalScopes2 = new ();
$		principalScopes2->set@odatatype('#microsoft.graph.accessReviewQueryScope');

$		principalScopes2->setQuery('/v1.0/groups');

$		principalScopes2->setQueryType('MicrosoftGraph');


$principalScopesArray []= $principalScopes2;
$scope->setPrincipalScopes($principalScopesArray);


	'resourceScopes' => $resourceScopes1 = new ();
$	resourceScopes1->set@odatatype('#microsoft.graph.accessReviewQueryScope');

$	resourceScopes1->setQuery('/beta/roleManagement/directory/roleDefinitions/9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3');

$	resourceScopes1->setQueryType('MicrosoftGraph');


$resourceScopesArray []= $resourceScopes1;
$scope->setResourceScopes($resourceScopesArray);


];
$scope->setAdditionalData($additionalData);



$requestBody->setScope($scope);
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




$result = $graphServiceClient->identityGovernance()->accessReviews()->definitionsById('accessReviewScheduleDefinition-id')->instancesById('accessReviewInstance-id')->patch($requestBody);


```