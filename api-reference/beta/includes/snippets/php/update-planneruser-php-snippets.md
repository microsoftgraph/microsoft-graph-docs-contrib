---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PlannerUser();
$favoritePlanReferences = new PlannerFavoritePlanReferenceCollection();
$additionalData = [
		'jd8S5gOaFk2S8aWCIAJz42QAAxtD' => $favoritePlanReferences = new Jd8S5gOaFk2S8aWCIAJz42QAAxtD();
$		favoritePlanReferences->set@odatatype('#microsoft.graph.plannerFavoritePlanReference');

$		favoritePlanReferences->setOrderHint(' !');

$		favoritePlanReferences->setPlanTitle('Next Release Discussion');


$favoritePlanReferences->setJd8S5gOaFk2S8aWCIAJz42QAAxtD($jd8S5gOaFk2S8aWCIAJz42QAAxtD);

		'7oTB5aMIAE2rVo-1N-L7RmQAGX2q' => 		null,
];
$favoritePlanReferences->setAdditionalData($additionalData);



$requestBody->setFavoritePlanReferences($favoritePlanReferences);
$recentPlanReferences = new PlannerRecentPlanReferenceCollection();
$additionalData = [
		'jd8S5gOaFk2S8aWCIAJz42QAAxtD' => $recentPlanReferences = new Jd8S5gOaFk2S8aWCIAJz42QAAxtD();
$		recentPlanReferences->set@odatatype('#microsoft.graph.plannerRecentPlanReference');

$		recentPlanReferences->setLastAccessedDateTime('2018-01-02T22:49:46.155Z');

$		recentPlanReferences->setPlanTitle('Next Release Discussion');


$recentPlanReferences->setJd8S5gOaFk2S8aWCIAJz42QAAxtD($jd8S5gOaFk2S8aWCIAJz42QAAxtD);

];
$recentPlanReferences->setAdditionalData($additionalData);



$requestBody->setRecentPlanReferences($recentPlanReferences);

$requestConfiguration = new PlannerRequestBuilderPatchRequestConfiguration();
$headers = [
		'Prefer' => 'return=representation',
		'If-Match' => 'W/"JzEtVXNlckRldGFpbHMgQEBAQEBAQEBAQEBAQEBIWCc="',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->me()->planner()->patch($requestBody, $requestConfiguration);


```