---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationGradingCategory();
$requestBody->setDisplayName('Quiz-1');



$result = $graphServiceClient->education()->classes()->byClasseId('educationClass-id')->assignmentSettings()->gradingCategories()->byGradingCategorieId('educationGradingCategory-id')->patch($requestBody);


```