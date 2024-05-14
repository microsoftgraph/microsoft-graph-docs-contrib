---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationClass;
use Microsoft\Graph\Generated\Models\IdentitySet;
use Microsoft\Graph\Generated\Models\EducationTerm;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationClass();
$requestBody->setOdataType('#microsoft.graph.educationClass');
$requestBody->setDisplayName('String');
$requestBody->setMailNickname('String');
$requestBody->setDescription('String');
$createdBy = new IdentitySet();
$createdBy->setOdataType('microsoft.graph.identitySet');
$requestBody->setCreatedBy($createdBy);
$requestBody->setClassCode('String');
$requestBody->setExternalName('String');
$requestBody->setExternalId('String');
$requestBody->setExternalSource(new EducationExternalSource('string'));
$requestBody->setExternalSourceDetail('String');
$requestBody->setGrade('String');
$term = new EducationTerm();
$term->setOdataType('microsoft.graph.educationTerm');
$requestBody->setTerm($term);

$result = $graphServiceClient->education()->classes()->post($requestBody)->wait();

```