---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationCategory();
$requestBody->setDisplayName('Quizzes');



$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentCategories()->post($requestBody);


```