---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationAssignmentResource();
$requestBody->setDistributeForStudentWork(false);

$resource = new EducationLinkResource();
$resource->setDisplayName('Where the Wonders of Learning Never Cease | Wonderopolis');

$resource->setLink('https://wonderopolis.org/');

$resource->setOdataType('#microsoft.graph.educationLinkResource');

$additionalData = [
		'thumbnailPreviewUrl' => 		null,
];
$resource->setAdditionalData($additionalData);



$requestBody->setResource($resource);


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->resources()->post($requestBody);


```