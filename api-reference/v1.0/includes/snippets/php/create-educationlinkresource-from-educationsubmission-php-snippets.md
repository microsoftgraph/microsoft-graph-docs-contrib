---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationSubmissionResource();
$resource = new EducationLinkResource();
$resource->setDisplayName('Wikipedia');
$resource->setLink('https://en.wikipedia.org/wiki/Main_Page');
$resource->setOdataType('#microsoft.graph.educationLinkResource');
$requestBody->setResource($resource);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->submissions()->byEducationSubmissionId('educationSubmission-id')->resources()->post($requestBody)->wait();

```