---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AddCopyPostRequestBody();
$requestBody->setContentType('https://graph.microsoft.com/v1.0/sites/{site-id}/contentTypes/0x0101');



$result = $graphServiceClient->sitesById('site-id')->listsById('list-id')->contentTypes()->addCopy()->post($requestBody);


```