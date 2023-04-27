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
$resource->setDisplayName('Where the Wonders of Learning Never Cease | Wonderopolis');

$resource->set@odatatype('#microsoft.graph.educationLinkResource');

$additionalData = [
		'link' => 'https://wonderopolis.org/', 
		'thumbnailPreviewUrl' => 		null,
];
$resource->setAdditionalData($additionalData);



$requestBody->setResource($resource);


$result = $graphServiceClient->education()->classesById('educationClass-id')->assignmentsById('educationAssignment-id')->resources()->post($requestBody);


```