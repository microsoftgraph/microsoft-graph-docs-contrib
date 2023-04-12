---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Set();
$requestBody->setDescription('mySet');



$result = $graphServiceClient->sitesById('site-id')->termStore()->setsById('set-id')->patch($requestBody);


```