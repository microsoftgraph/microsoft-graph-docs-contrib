---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new EducationAssignmentItemRequestBuilderGetRequestConfiguration();
$headers = [
		'Prefer' => 'include-unknown-enum-members',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->get($requestConfiguration)->wait();

```