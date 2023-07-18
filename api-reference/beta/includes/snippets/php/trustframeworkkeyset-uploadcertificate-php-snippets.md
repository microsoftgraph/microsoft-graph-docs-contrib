---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UploadCertificatePostRequestBody();
$requestBody->setKey('key-value');



$result = $graphServiceClient->trustFramework()->keySets()->byTrustFrameworkKeySetId('trustFrameworkKeySet-id')->uploadCertificate()->post($requestBody);


```