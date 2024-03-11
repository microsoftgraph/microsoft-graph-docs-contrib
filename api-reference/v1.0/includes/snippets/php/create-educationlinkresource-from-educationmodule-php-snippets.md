---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationModuleResource();
$resource = new EducationLinkResource();
$resource->setOdataType('#microsoft.graph.educationLinkResource');
$resource->setDisplayName('Bing site');
$resource->setLink('https://www.bing.com');
$requestBody->setResource($resource);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->modules()->byEducationModuleId('educationModule-id')->resources()->post($requestBody)->wait();

```