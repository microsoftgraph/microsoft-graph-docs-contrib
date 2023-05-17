---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UploadSecretPostRequestBody();
$requestBody->setUse('use-value');

$requestBody->setK('application-secret-to-be-uploaded');

$requestBody->setNbf(1508969811);

$requestBody->setExp(1508973711);



$result = $graphServiceClient->trustFramework()->keySetsById('trustFrameworkKeySet-id')->uploadSecret()->post($requestBody);


```