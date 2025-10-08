---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationAssignmentResource;
use Microsoft\Graph\Generated\Models\EducationResource;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationAssignmentResource();
$requestBody->setDistributeForStudentWork(true);
$resource = new EducationResource();
$resource->setOdataType('microsoft.graph.educationSpeakerProgressResource');
$resource->setDisplayName('speakerProgressTestResource');
$additionalData = [
	'recordingTimeLimitInMinutes' => 5,
	'showRehearsalReportToStudentBeforeMediaUpload' => true,
	'maxRecordingAttempts' => 1,
	'isVideoRequired' => true,
	'isAiFeedbackEnabled' => true,
	'presentationTitle' => 'speakerProgressTestResource',
	'spokenLanguageLocale' => 'en-US',
	'speakerCoachSettings' => [
		'deliverySettings' => [
			'isPronunciationEnabled' => true,
		],
	],
	'aiFeedbackCriteria' => [
		'speechType' => 'informative',
		'aiFeedbackSettings' => [
			'deliverySettings' => [
				'isStyleEnabled' => true,
			],
		],
	],
];
$resource->setAdditionalData($additionalData);
$requestBody->setResource($resource);

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->resources()->post($requestBody)->wait();

```