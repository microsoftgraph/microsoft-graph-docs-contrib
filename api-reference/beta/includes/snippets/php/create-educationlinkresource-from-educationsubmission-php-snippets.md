---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationSubmissionResource();
$resource = new EducationLinkResource();
$resource->setDisplayName('Wikipedia');

$resource->setLink('https://en.wikipedia.org/wiki/Main_Page');

$resource->set@odatatype('#microsoft.graph.educationLinkResource');


$requestBody->setResource($resource);


$result = $graphServiceClient->education()->classes()->byClasseId('educationClass-id')->assignments()->byAssignmentId('educationAssignment-id')->submissions()->bySubmissionId('educationSubmission-id')->resources()->post($requestBody);


```