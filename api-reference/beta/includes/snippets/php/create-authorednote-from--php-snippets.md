---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AuthoredNote();
$content = new ItemBody();
$content->setContent('Please take a look at the files tagged with follow up');

$content->setContentType(new BodyType('text'));


$requestBody->setContent($content);


$result = $graphServiceClient->privacy()->subjectRightsRequestsById('subjectRightsRequest-id')->notes()->post($requestBody);


```