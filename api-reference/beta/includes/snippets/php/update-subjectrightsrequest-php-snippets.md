---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SubjectRightsRequest();
$requestBody->setOdataType('#microsoft.graph.subjectRightsRequest');

$requestBody->setInternalDueDateTime(new \DateTime('2021-08-30T00:00:00Z'));



$result = $graphServiceClient->privacy()->subjectRightsRequests()->bySubjectRightsRequestId('subjectRightsRequest-id')->patch($requestBody);


```