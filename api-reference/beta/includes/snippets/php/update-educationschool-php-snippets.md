---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationSchool();
$requestBody->setDisplayName('Fabrikam Arts High School');

$requestBody->setDescription('Magnate school for the arts. Los Angeles School District');



$result = $graphServiceClient->education()->schools()->byEducationSchoolId('educationSchool-id')->patch($requestBody);


```