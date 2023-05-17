---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Program();
$requestBody->setDisplayName('testprogram3 new name');



$result = $graphServiceClient->programsById('program-id')->patch($requestBody);


```