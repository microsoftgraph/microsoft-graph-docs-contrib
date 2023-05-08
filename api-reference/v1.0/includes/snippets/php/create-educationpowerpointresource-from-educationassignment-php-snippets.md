---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationAssignmentResource();
$requestBody->setDistributeForStudentWork(false);

$resource = new EducationResource();
$resource->set@odatatype('microsoft.graph.educationPowerPointResource');

$resource->setDisplayName('state diagram.pptx');

$additionalData = [
		'fileUrl' => 'https://graph.microsoft.com/v1.0/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RN327OXRN6EVFE2Q5FRJZTN5EOJ', 
];
$resource->setAdditionalData($additionalData);



$requestBody->setResource($resource);


$result = $graphServiceClient->education()->classesById('educationClass-id')->assignmentsById('educationAssignment-id')->resources()->post($requestBody);


```