---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SetUpResourcesFolderPostRequestBody();


$result = $graphServiceClient->education()->classesById('educationClass-id')->assignmentsById('educationAssignment-id')->setUpResourcesFolder()->post($requestBody);


```