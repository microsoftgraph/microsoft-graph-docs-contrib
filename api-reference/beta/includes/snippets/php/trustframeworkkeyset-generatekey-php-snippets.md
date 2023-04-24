---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new GenerateKeyPostRequestBody();
$requestBody->setUse('sig');

$requestBody->setKty('RSA');

$requestBody->setNbf(1508969811);

$requestBody->setExp(1508969811);



$result = $graphServiceClient->trustFramework()->keySetsById('trustFrameworkKeySet-id')->generateKey()->post($requestBody);


```