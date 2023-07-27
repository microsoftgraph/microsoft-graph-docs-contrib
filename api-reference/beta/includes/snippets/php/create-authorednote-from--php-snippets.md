---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AuthoredNote();
$content = new ItemBody();
$content->setContent('Please take a look at the files tagged with follow up');

$content->setContentType(new BodyType('text'));


$requestBody->setContent($content);


$result = $graphServiceClient->privacy()->subjectRightsRequests()->bySubjectRightsRequestId('subjectRightsRequest-id')->notes()->post($requestBody);


```