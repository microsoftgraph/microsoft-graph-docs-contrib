---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SubjectRightsRequest();
$requestBody->set@odatatype('#microsoft.graph.subjectRightsRequest');

$requestBody->setInternalDueDateTime(new DateTime('2021-08-30T00:00:00Z'));



$result = $graphServiceClient->privacy()->subjectRightsRequestsById('subjectRightsRequest-id')->patch($requestBody);


```