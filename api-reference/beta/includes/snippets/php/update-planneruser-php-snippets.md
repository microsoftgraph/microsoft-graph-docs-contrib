---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Users\Item\Planner\PlannerRequestBuilderPatchRequestConfiguration;
use Microsoft\Graph\Generated\Models\PlannerUser;
use Microsoft\Graph\Generated\Models\PlannerFavoritePlanReferenceCollection;
use Microsoft\Graph\Generated\Models\PlannerFavoritePlanReference;
use Microsoft\Graph\Generated\Models\PlannerRecentPlanReferenceCollection;
use Microsoft\Graph\Generated\Models\PlannerRecentPlanReference;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerUser();
$favoritePlanReferences = new PlannerFavoritePlanReferenceCollection();
$additionalData = [
	'jd8S5gOaFk2S8aWCIAJz42QAAxtD' => [
		'@odata.type' => '#microsoft.graph.plannerFavoritePlanReference',
		'orderHint' => ' !',
		'planTitle' => 'Next Release Discussion',
	],
	'7oTB5aMIAE2rVo-1N-L7RmQAGX2q' => null,
];
$favoritePlanReferences->setAdditionalData($additionalData);
$requestBody->setFavoritePlanReferences($favoritePlanReferences);
$recentPlanReferences = new PlannerRecentPlanReferenceCollection();
$additionalData = [
	'jd8S5gOaFk2S8aWCIAJz42QAAxtD' => [
		'@odata.type' => '#microsoft.graph.plannerRecentPlanReference',
		'lastAccessedDateTime' => new \DateTime('2018-01-02T22:49:46.155Z'),
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


$result = $graphServiceClient->me()->planner()->patch($requestBody, $requestConfiguration)->wait();

```