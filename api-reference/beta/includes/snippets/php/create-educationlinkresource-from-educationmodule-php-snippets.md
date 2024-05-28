---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EducationModuleResource;
use Microsoft\Graph\Beta\Generated\Models\EducationLinkResource;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationModuleResource();
$resource = new EducationLinkResource();
$resource->setOdataType('#microsoft.graph.educationLinkResource');
$resource->setDisplayName('Bing site');
$resource->setLink('https://www.bing.com');
$requestBody->setResource($resource);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->modules()->byEducationModuleId('educationModule-id')->resources()->post($requestBody)->wait();

```