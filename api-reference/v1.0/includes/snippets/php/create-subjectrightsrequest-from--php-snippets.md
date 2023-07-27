---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SubjectRightsRequest();
$requestBody->setType(new SubjectRightsRequestType('subjectRightsRequestType'));

$requestBody->setDataSubjectType(new DataSubjectType('dataSubjectType'));

$requestBody->setRegulations(['String', 	]);

$requestBody->setDisplayName('String');

$requestBody->setDescription('String');

$requestBody->setInternalDueDateTime(new \DateTime('String (timestamp)'));

$dataSubject = new DataSubject();
$dataSubject->setFirstName('String');

$dataSubject->setLastName('String');

$dataSubject->setEmail('String');

$dataSubject->setResidency('String');

$additionalData = [
		'phoneNumber' => 'String', 
		'SSN' => 'String', 
];
$dataSubject->setAdditionalData($additionalData);



$requestBody->setDataSubject($dataSubject);


$result = $graphServiceClient->privacy()->subjectRightsRequests()->post($requestBody);


```