---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UploadSecretPostRequestBody();
$requestBody->setEscapedUse('use-value');
$requestBody->setK('application-secret-to-be-uploaded');
$requestBody->setNbf(1508969811);
$requestBody->setExp(1508973711);

$result = $graphServiceClient->trustFramework()->keySets()->byTrustFrameworkKeySetId('trustFrameworkKeySet-id')->uploadSecret()->post($requestBody)->wait();

```