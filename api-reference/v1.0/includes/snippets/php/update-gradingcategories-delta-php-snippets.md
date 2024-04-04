---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationAssignmentSettings();
$additionalData = [
	'gradingCategories@delta' => [
			[
				'id' => 'fb859cd3-943b-4cd6-9bbe-fe1c39eace0e',
				'displayName' => 'Lab Test',
			],
			[
				'@odata.context' => 'https://graph.microsoft.com/beta/$metadata#gradingCategories/$deletedEntity',
				'id' => 'e2a86277-24f9-4f29-8196-8c83fc69d00d',
				'reason' => 'deleted',
			],
			[
				'displayName' => 'Lab Practice',
				'percentageWeight' => 30,
			],
			[
				'displayName' => 'Lab Theory',
				'percentageWeight' => 10,
			],
		],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentSettings()->patch($requestBody)->wait();

```