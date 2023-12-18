---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationModuleResource();
$resource = new EducationLinkResource();
$resource->setOdataType('#microsoft.graph.educationLinkResource');
$resource->setDisplayName('Bing site');
$resource->setLink('https://www.bing.com');
$requestBody->setResource($resource);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->modules()->byEducationModuleId('educationModule-id')->resources()->post($requestBody)->wait();

```