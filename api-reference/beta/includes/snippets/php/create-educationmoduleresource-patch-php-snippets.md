---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationModuleResource();
$resource = new EducationResource();
$resource->setDisplayName('new pdf file patched.pdf');
$requestBody->setResource($resource);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->modules()->byEducationModuleId('educationModule-id')->resources()->byEducationModuleResourceId('educationModuleResource-id')->patch($requestBody)->wait();

```