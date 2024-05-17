---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationAssignmentSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationAssignmentSettings();
$additionalData = [
	'gradingCategories@delta' => [
			[
				'id' => '03bd9196-ce2e-41bd-902f-df9ae02de4db',
				'displayName' => 'Lab Updated',
			],
			[
				'@odata.context' => 'https://graph.microsoft.com/beta/$metadata#gradingCategories/$deletedEntity',
				'id' => '109e5d73-3ef7-42a5-88d8-7e30cdb85f06',
				'reason' => 'deleted',
			],
			[
				'displayName' => 'New Homework',
				'percentageWeight' => 50,
			],
		],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentSettings()->patch($requestBody)->wait();

```