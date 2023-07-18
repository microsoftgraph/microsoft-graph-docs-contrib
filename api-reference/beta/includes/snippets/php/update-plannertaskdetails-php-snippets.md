---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerTaskDetails();
$requestBody->setPreviewType(new PlannerPreviewType('noPreview'));

$references = new PlannerExternalReferences();
$additionalData = [
		'http%3A//developer%2Emicrosoft%2Ecom' => 		[
				'@odata.type' => 'microsoft.graph.plannerExternalReference', 
				'alias' => 'Documentation', 
				'previewPriority' => ' !', 
				'type' => 'Other', 
		],

		'https%3A//developer%2Emicrosoft%2Ecom/graph/graph-explorer' => 		[
				'@odata.type' => 'microsoft.graph.plannerExternalReference', 
				'previewPriority' => '  !!', 
		],

		'http%3A//www%2Ebing%2Ecom' => 		null,
];
$references->setAdditionalData($additionalData);



$requestBody->setReferences($references);
$checklist = new PlannerChecklistItems();
$additionalData = [
		'95e27074-6c4a-447a-aa24-9d718a0b86fa' => 		[
				'@odata.type' => 'microsoft.graph.plannerChecklistItem', 
				'title' => 'Update task details', 
				'isChecked' => true,
		],

		'd280ed1a-9f6b-4f9c-a962-fb4d00dc50ff' => 		[
				'@odata.type' => 'microsoft.graph.plannerChecklistItem', 
				'isChecked' => true,
		],

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


$result = $graphServiceClient->planner()->tasks()->byPlannerTaskId('plannerTask-id')->details()->patch($requestBody, $requestConfiguration);


```