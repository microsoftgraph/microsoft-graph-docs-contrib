---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationGradingScheme;
use Microsoft\Graph\Generated\Models\EducationGradingSchemeGrade;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationGradingScheme();
$requestBody->setDisplayName('PassFailScheme');
$gradesEducationGradingSchemeGrade1 = new EducationGradingSchemeGrade();
$gradesEducationGradingSchemeGrade1->setDisplayName('Pass');
$gradesEducationGradingSchemeGrade1->setMinPercentage(70);
$gradesEducationGradingSchemeGrade1->setDefaultPercentage(90);
$gradesArray []= $gradesEducationGradingSchemeGrade1;
$gradesEducationGradingSchemeGrade2 = new EducationGradingSchemeGrade();
$gradesEducationGradingSchemeGrade2->setDisplayName('Fail');
$gradesEducationGradingSchemeGrade2->setMinPercentage(0);
$gradesEducationGradingSchemeGrade2->setDefaultPercentage(50);
$gradesArray []= $gradesEducationGradingSchemeGrade2;
$requestBody->setGrades($gradesArray);


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentSettings()->gradingSchemes()->post($requestBody)->wait();

```