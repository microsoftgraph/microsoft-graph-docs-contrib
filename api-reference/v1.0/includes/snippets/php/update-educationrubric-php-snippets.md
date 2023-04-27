---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationRubric();
$requestBody->setDisplayName('Example Credit Rubric after display name patch');



$result = $graphServiceClient->education()->me()->rubricsById('educationRubric-id')->patch($requestBody);


```