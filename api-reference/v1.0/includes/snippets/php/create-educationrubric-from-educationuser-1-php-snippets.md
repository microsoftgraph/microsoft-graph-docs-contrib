---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationRubric();
$requestBody->setDisplayName('Example Credit Rubric');

$description = new EducationItemBody();
$description->setContent('This is an example of a credit rubric (no points)');

$description->setContentType(new BodyType('text'));


$requestBody->setDescription($description);
$levelsRubricLevel1 = new RubricLevel();
$levelsRubricLevel1->setDisplayName('Good');

$levelsRubricLevel1Description = new EducationItemBody();
$levelsRubricLevel1Description->setContent('');

$levelsRubricLevel1Description->setContentType(new BodyType('text'));


$levelsRubricLevel1->setDescription($levelsRubricLevel1Description);

$levelsArray []= $levelsRubricLevel1;
$levelsRubricLevel2 = new RubricLevel();
$levelsRubricLevel2->setDisplayName('Poor');

$levelsRubricLevel2Description = new EducationItemBody();
$levelsRubricLevel2Description->setContent('');

$levelsRubricLevel2Description->setContentType(new BodyType('text'));


$levelsRubricLevel2->setDescription($levelsRubricLevel2Description);

$levelsArray []= $levelsRubricLevel2;
$requestBody->setLevels($levelsArray);


$qualitiesRubricQuality1 = new RubricQuality();
$qualitiesRubricQuality1Description = new EducationItemBody();
$qualitiesRubricQuality1Description->setContent('Argument');

$qualitiesRubricQuality1Description->setContentType(new BodyType('text'));


$qualitiesRubricQuality1->setDescription($qualitiesRubricQuality1Description);
$criteriaRubricCriterion1 = new RubricCriterion();
$criteriaRubricCriterion1Description = new EducationItemBody();
$criteriaRubricCriterion1Description->setContent('The essay\'s argument is persuasive.');

$criteriaRubricCriterion1Description->setContentType(new BodyType('text'));


$criteriaRubricCriterion1->setDescription($criteriaRubricCriterion1Description);

$criteriaArray []= $criteriaRubricCriterion1;
$criteriaRubricCriterion2 = new RubricCriterion();
$criteriaRubricCriterion2Description = new EducationItemBody();
$criteriaRubricCriterion2Description->setContent('The essay\'s argument does not make sense.');

$criteriaRubricCriterion2Description->setContentType(new BodyType('text'));


$criteriaRubricCriterion2->setDescription($criteriaRubricCriterion2Description);

$criteriaArray []= $criteriaRubricCriterion2;
$qualitiesRubricQuality1->setCriteria($criteriaArray);



$qualitiesArray []= $qualitiesRubricQuality1;
$qualitiesRubricQuality2 = new RubricQuality();
$qualitiesRubricQuality2Description = new EducationItemBody();
$qualitiesRubricQuality2Description->setContent('Spelling and Grammar');

$qualitiesRubricQuality2Description->setContentType(new BodyType('text'));


$qualitiesRubricQuality2->setDescription($qualitiesRubricQuality2Description);
$criteriaRubricCriterion1 = new RubricCriterion();
$criteriaRubricCriterion1Description = new EducationItemBody();
$criteriaRubricCriterion1Description->setContent('The essay uses proper spelling and grammar with few or no errors.');

$criteriaRubricCriterion1Description->setContentType(new BodyType('text'));


$criteriaRubricCriterion1->setDescription($criteriaRubricCriterion1Description);

$criteriaArray []= $criteriaRubricCriterion1;
$criteriaRubricCriterion2 = new RubricCriterion();
$criteriaRubricCriterion2Description = new EducationItemBody();
$criteriaRubricCriterion2Description->setContent('The essay has numerous errors in spelling and/or grammar.');

$criteriaRubricCriterion2Description->setContentType(new BodyType('text'));


$criteriaRubricCriterion2->setDescription($criteriaRubricCriterion2Description);

$criteriaArray []= $criteriaRubricCriterion2;
$qualitiesRubricQuality2->setCriteria($criteriaArray);



$qualitiesArray []= $qualitiesRubricQuality2;
$requestBody->setQualities($qualitiesArray);




$result = $graphServiceClient->education()->me()->rubrics()->post($requestBody);


```