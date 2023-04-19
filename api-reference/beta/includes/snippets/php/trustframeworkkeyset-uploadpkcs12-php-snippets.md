---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UploadPkcs12PostRequestBody();
$requestBody->setKey('Base64-encoded-pfx-content');

$requestBody->setPassword('password-value');



$result = $graphServiceClient->trustFramework()->keySetsById('trustFrameworkKeySet-id')->uploadPkcs12()->post($requestBody);


```