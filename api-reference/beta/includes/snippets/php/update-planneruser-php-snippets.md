---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerUser();
$favoritePlanReferences = new PlannerFavoritePlanReferenceCollection();
$additionalData = [
		'jd8S5gOaFk2S8aWCIAJz42QAAxtD' => 		[
				'@odata.type' => '#microsoft.graph.plannerFavoritePlanReference', 
				'orderHint' => ' !', 
				'planTitle' => 'Next Release Discussion', 
		],

		'7oTB5aMIAE2rVo-1N-L7RmQAGX2q' => 		null,
];
$favoritePlanReferences->setAdditionalData($additionalData);



$requestBody->setFavoritePlanReferences($favoritePlanReferences);
$recentPlanReferences = new PlannerRecentPlanReferenceCollection();
$additionalData = [
		'jd8S5gOaFk2S8aWCIAJz42QAAxtD' => 		[
				'@odata.type' => '#microsoft.graph.plannerRecentPlanReference', 
				'lastAccessedDateTime' => '2018-01-02T22:49:46.155Z', 
				'planTitle' => 'Next Release Discussion', 
		],

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