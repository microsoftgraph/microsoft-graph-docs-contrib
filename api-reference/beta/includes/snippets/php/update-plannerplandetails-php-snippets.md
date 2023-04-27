---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PlannerPlanDetails();
$sharedWith = new PlannerUserIds();
$additionalData = [
		'6463a5ce-2119-4198-9f2a-628761df4a62' => true,
		'd95e6152-f683-4d78-9ff5-67ad180fea4a' => false,
];
$sharedWith->setAdditionalData($additionalData);



$requestBody->setSharedWith($sharedWith);
$categoryDescriptions = new PlannerCategoryDescriptions();
$categoryDescriptions->setCategory1('Indoors');

$CategoryDescriptions->setCategory3(null);


$requestBody->setCategoryDescriptions($categoryDescriptions);

$requestConfiguration = new DetailsRequestBuilderPatchRequestConfiguration();
$headers = [
		'Prefer' => 'return=representation',
		'If-Match' => 'W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc="',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->planner()->plansById('plannerPlan-id')->details()->patch($requestBody, $requestConfiguration);


```