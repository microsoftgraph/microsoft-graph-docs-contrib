---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationAssignmentSettings();
$gradingCategoriesEducationGradingCategory1 = new EducationGradingCategory();
$gradingCategoriesEducationGradingCategory1->setDisplayName('Lab');

$gradingCategoriesEducationGradingCategory1->setPercentageWeight(10);


$gradingCategoriesArray []= $gradingCategoriesEducationGradingCategory1;
$gradingCategoriesEducationGradingCategory2 = new EducationGradingCategory();
$gradingCategoriesEducationGradingCategory2->setDisplayName('Homework');

$gradingCategoriesEducationGradingCategory2->setPercentageWeight(80);


$gradingCategoriesArray []= $gradingCategoriesEducationGradingCategory2;
$gradingCategoriesEducationGradingCategory3 = new EducationGradingCategory();
$gradingCategoriesEducationGradingCategory3->setDisplayName('Test');

$gradingCategoriesEducationGradingCategory3->setPercentageWeight(10);


$gradingCategoriesArray []= $gradingCategoriesEducationGradingCategory3;
$requestBody->setGradingCategories($gradingCategoriesArray);




$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentSettings()->patch($requestBody);


```