---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewInstance();
$scope = new PrincipalResourceMembershipsScope();
$scope->setOdataType('#microsoft.graph.principalResourceMembershipsScope');

$principalScopesAccessReviewScope1 = new AccessReviewQueryScope();
$principalScopesAccessReviewScope1->setOdataType('#microsoft.graph.accessReviewQueryScope');

$principalScopesAccessReviewScope1->setQuery('/v1.0/users');

$principalScopesAccessReviewScope1->setQueryType('MicrosoftGraph');


$principalScopesArray []= $principalScopesAccessReviewScope1;
$principalScopesAccessReviewScope2 = new AccessReviewQueryScope();
$principalScopesAccessReviewScope2->setOdataType('#microsoft.graph.accessReviewQueryScope');

$principalScopesAccessReviewScope2->setQuery('/v1.0/groups');

$principalScopesAccessReviewScope2->setQueryType('MicrosoftGraph');


$principalScopesArray []= $principalScopesAccessReviewScope2;
$scope->setPrincipalScopes($principalScopesArray);


$resourceScopesAccessReviewScope1 = new AccessReviewQueryScope();
$resourceScopesAccessReviewScope1->setOdataType('#microsoft.graph.accessReviewQueryScope');

$resourceScopesAccessReviewScope1->setQuery('/beta/roleManagement/directory/roleDefinitions/9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3');

$resourceScopesAccessReviewScope1->setQueryType('MicrosoftGraph');


$resourceScopesArray []= $resourceScopesAccessReviewScope1;
$scope->setResourceScopes($resourceScopesArray);



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




$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->byAccessReviewScheduleDefinitionId('accessReviewScheduleDefinition-id')->instances()->byAccessReviewInstanceId('accessReviewInstance-id')->patch($requestBody);


```