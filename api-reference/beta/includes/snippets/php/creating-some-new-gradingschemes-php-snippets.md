---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationAssignmentSettings;
use Microsoft\Graph\Generated\Models\EducationGradingScheme;
use Microsoft\Graph\Generated\Models\EducationGradingSchemeGrade;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationAssignmentSettings();
$gradingSchemesEducationGradingScheme1 = new EducationGradingScheme();
$gradingSchemesEducationGradingScheme1->setDisplayName('Pass/fail');
$gradesEducationGradingSchemeGrade1 = new EducationGradingSchemeGrade();
$gradesEducationGradingSchemeGrade1->setDisplayName('Pass');
$gradesEducationGradingSchemeGrade1->setMinPercentage(60);
$gradesEducationGradingSchemeGrade1->setDefaultPercentage(100);
$gradesArray []= $gradesEducationGradingSchemeGrade1;
$gradesEducationGradingSchemeGrade2 = new EducationGradingSchemeGrade();
$gradesEducationGradingSchemeGrade2->setDisplayName('Fail');
$gradesEducationGradingSchemeGrade2->setMinPercentage(0);
$gradesEducationGradingSchemeGrade2->setDefaultPercentage(0);
$gradesArray []= $gradesEducationGradingSchemeGrade2;
$gradingSchemesEducationGradingScheme1->setGrades($gradesArray);

$gradingSchemesArray []= $gradingSchemesEducationGradingScheme1;
$gradingSchemesEducationGradingScheme2 = new EducationGradingScheme();
$gradingSchemesEducationGradingScheme2->setDisplayName('Letters');
$gradesEducationGradingSchemeGrade1 = new EducationGradingSchemeGrade();
$gradesEducationGradingSchemeGrade1->setDisplayName('A');
$gradesEducationGradingSchemeGrade1->setMinPercentage(90);
$gradesArray []= $gradesEducationGradingSchemeGrade1;
$gradesEducationGradingSchemeGrade2 = new EducationGradingSchemeGrade();
$gradesEducationGradingSchemeGrade2->setDisplayName('B');
$gradesEducationGradingSchemeGrade2->setMinPercentage(80);
$gradesArray []= $gradesEducationGradingSchemeGrade2;
$gradesEducationGradingSchemeGrade3 = new EducationGradingSchemeGrade();
$gradesEducationGradingSchemeGrade3->setDisplayName('C');
$gradesEducationGradingSchemeGrade3->setMinPercentage(70);
$gradesArray []= $gradesEducationGradingSchemeGrade3;
$gradesEducationGradingSchemeGrade4 = new EducationGradingSchemeGrade();
$gradesEducationGradingSchemeGrade4->setDisplayName('D');
$gradesEducationGradingSchemeGrade4->setMinPercentage(60);
$gradesArray []= $gradesEducationGradingSchemeGrade4;
$gradesEducationGradingSchemeGrade5 = new EducationGradingSchemeGrade();
$gradesEducationGradingSchemeGrade5->setDisplayName('F');
$gradesEducationGradingSchemeGrade5->setMinPercentage(0);
$gradesArray []= $gradesEducationGradingSchemeGrade5;
$gradingSchemesEducationGradingScheme2->setGrades($gradesArray);

$gradingSchemesArray []= $gradingSchemesEducationGradingScheme2;
$requestBody->setGradingSchemes($gradingSchemesArray);


$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentSettings()->patch($requestBody)->wait();

```