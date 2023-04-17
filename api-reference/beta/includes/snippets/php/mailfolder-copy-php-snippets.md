---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CopyPostRequestBody();
$requestBody->setDestinationId('destinationId-value');



$result = $graphServiceClient->me()->mailFoldersById('mailFolder-id')->copy()->post($requestBody);


```