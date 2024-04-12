---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationModuleResource;
use Microsoft\Graph\Generated\Models\EducationLinkedAssignmentResource;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationModuleResource();
$resource = new EducationLinkedAssignmentResource();
$resource->setOdataType('#microsoft.graph.educationLinkedAssignmentResource');
$resource->setDisplayName('2024-01-19T17_54_38_711Z');
$resource->setUrl('https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/b6a1d277-fed7-4345-940e-3f2ce13eb737');
$requestBody->setResource($resource);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->modules()->byEducationModuleId('educationModule-id')->resources()->post($requestBody)->wait();

```