---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationSchool();
$requestBody->set@odatatype('#microsoft.graph.educationSchool');

$requestBody->setDisplayName('String');

$requestBody->setDescription('String');

$requestBody->setExternalSource(new EducationExternalSource('string'));

$requestBody->setExternalSourceDetail('String');

$requestBody->setPrincipalEmail('String');

$requestBody->setPrincipalName('String');

$requestBody->setExternalPrincipalId('String');

$requestBody->setLowestGrade('String');

$requestBody->setHighestGrade('String');

$requestBody->setSchoolNumber('String');

$requestBody->setExternalId('String');

$requestBody->setPhone('String');

$requestBody->setFax('String');

$createdBy = new IdentitySet();
$createdBy->set@odatatype('microsoft.graph.identitySet');


$requestBody->setCreatedBy($createdBy);
$address = new PhysicalAddress();
$address->set@odatatype('microsoft.graph.physicalAddress');


$requestBody->setAddress($address);


$result = $graphServiceClient->education()->schools()->post($requestBody);


```