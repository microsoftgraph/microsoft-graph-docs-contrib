---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PostponePostRequestBody();
$requestBody->setPostponeUntilDateTime(new DateTime('2023-02-01T02:53:00Z'));



$result = $graphServiceClient->directory()->recommendationsById('recommendation-id')->postpone()->post($requestBody);


```