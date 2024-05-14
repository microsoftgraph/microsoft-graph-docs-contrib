---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationModuleResource;
use Microsoft\Graph\Generated\Models\EducationWordResource;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationModuleResource();
$resource = new EducationWordResource();
$resource->setOdataType('#microsoft.graph.educationWordResource');
$resource->setDisplayName('test_word_file.docx');
$additionalData = [
	'file' => [
		'odataid' => 'https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ23DHK5BYNOKJCZOUJZJBOAOUZP',
	],
];
$resource->setAdditionalData($additionalData);
$requestBody->setResource($resource);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->modules()->byEducationModuleId('educationModule-id')->resources()->post($requestBody)->wait();

```