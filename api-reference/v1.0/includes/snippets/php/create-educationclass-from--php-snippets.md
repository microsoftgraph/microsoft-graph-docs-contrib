---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationClass();
$requestBody->set@odatatype('#microsoft.graph.educationClass');

$requestBody->setDisplayName('String');

$requestBody->setMailNickname('String');

$requestBody->setDescription('String');

$createdBy = new IdentitySet();
$createdBy->set@odatatype('microsoft.graph.identitySet');


$requestBody->setCreatedBy($createdBy);
$requestBody->setClassCode('String');

$requestBody->setExternalName('String');

$requestBody->setExternalId('String');

$requestBody->setExternalSource(new EducationExternalSource('string'));

$requestBody->setExternalSourceDetail('String');

$requestBody->setGrade('String');

$term = new EducationTerm();
$term->set@odatatype('microsoft.graph.educationTerm');


$requestBody->setTerm($term);


$result = $graphServiceClient->education()->classes()->post($requestBody);


```