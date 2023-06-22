---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PlannerTaskDetails();
$requestBody->setPreviewType(new PlannerPreviewType('nopreview'));

$references = new PlannerExternalReferences();
$additionalData = [
		'http%3A//developer%2Emicrosoft%2Ecom' => $references = new Http%3A//developer%2Emicrosoft%2Ecom();
$		references->set@odatatype('microsoft.graph.plannerExternalReference');

$		references->setAlias('Documentation');

$		references->setPreviewPriority(' !');

$		references->setType('Other');


$references->setHttp%3A//developer%2Emicrosoft%2Ecom($http%3A//developer%2Emicrosoft%2Ecom);

		'https%3A//developer%2Emicrosoft%2Ecom/graph/graph-explorer' => $references = new Https%3A//developer%2Emicrosoft%2Ecom/graph/graph-explorer();
$		references->set@odatatype('microsoft.graph.plannerExternalReference');

$		references->setPreviewPriority('  !!');


$references->setHttps%3A//developer%2Emicrosoft%2Ecom/graph/graph-explorer($https%3A//developer%2Emicrosoft%2Ecom/graph/graph-explorer);

		'http%3A//www%2Ebing%2Ecom' => 		null,
];
$references->setAdditionalData($additionalData);



$requestBody->setReferences($references);
$checklist = new PlannerChecklistItems();
$additionalData = [
		'95e27074-6c4a-447a-aa24-9d718a0b86fa' => $checklist = new 95e27074-6c4a-447a-aa24-9d718a0b86fa();
$		checklist->set@odatatype('microsoft.graph.plannerChecklistItem');

$		checklist->setTitle('Update task details');

		$checklist->setIsChecked(true);


$checklist->set95e27074-6c4a-447a-aa24-9d718a0b86fa($95e27074-6c4a-447a-aa24-9d718a0b86fa);

		'd280ed1a-9f6b-4f9c-a962-fb4d00dc50ff' => $checklist = new D280ed1a-9f6b-4f9c-a962-fb4d00dc50ff();
$		checklist->set@odatatype('microsoft.graph.plannerChecklistItem');

		$checklist->setIsChecked(true);


$checklist->setD280ed1a-9f6b-4f9c-a962-fb4d00dc50ff($d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff);

		'a93c93c5-10a6-4167-9551-8bafa09967a7' => 		null,
];
$checklist->setAdditionalData($additionalData);



$requestBody->setChecklist($checklist);
$requestBody->setDescription('Updated task details properties:\nUpdated checklist:Sub items\nUpdated references:Related links');


$requestConfiguration = new DetailsRequestBuilderPatchRequestConfiguration();
$headers = [
		'Prefer' => 'return=representation',
		'If-Match' => 'W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc="',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->planner()->tasksById('plannerTask-id')->details()->patch($requestBody, $requestConfiguration);


```