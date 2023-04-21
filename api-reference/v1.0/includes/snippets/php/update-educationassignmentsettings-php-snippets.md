---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationAssignmentSettings();
$requestBody->setSubmissionAnimationDisabled(true);



$result = $graphServiceClient->education()->classesById('educationClass-id')->assignmentSettings()->patch($requestBody);


```