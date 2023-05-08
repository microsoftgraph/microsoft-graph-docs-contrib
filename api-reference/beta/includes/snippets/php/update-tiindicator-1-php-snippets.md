---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TiIndicator();
$requestBody->setDescription('description-updated');



$result = $graphServiceClient->security()->tiIndicatorsById('tiIndicator-id')->patch($requestBody);


```