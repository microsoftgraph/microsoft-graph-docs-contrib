---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ResumePostRequestBody();
$requestBody->setSource('Contoso.SodCheckProcess');

$requestBody->setType('microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated');

$data = new CustomExtensionData();
$data->set@odatatype('microsoft.graph.accessPackageAssignmentRequestCallbackData');

$additionalData = [
		'stage' => 'assignmentRequestCreated', 
		'customExtensionStageInstanceId' => '957d0c50-466b-4840-bb5b-c92cea7141ff', 
		'customExtensionStageInstanceDetail' => 'This user is all verified', 
];
$data->setAdditionalData($additionalData);



$requestBody->setData($data);


$graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentRequestsById('accessPackageAssignmentRequest-id')->resume()->post($requestBody);


```