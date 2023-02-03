---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ReferenceUpdate();
$requestBody->set@odataid('https://graph.microsoft.com/v1.0/education/me/rubrics/{id}');



$graphServiceClient->education()->classesById('educationClass-id')->assignmentsById('educationAssignment-id')->rubric()->ref()->put($requestBody);


```