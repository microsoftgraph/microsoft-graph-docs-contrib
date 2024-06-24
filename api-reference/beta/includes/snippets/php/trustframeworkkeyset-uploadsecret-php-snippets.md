---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\TrustFramework\KeySets\Item\UploadSecret\UploadSecretPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UploadSecretPostRequestBody();
$requestBody->setEscapedUse('use-value');
$requestBody->setK('application-secret-to-be-uploaded');
$requestBody->setNbf(1508969811);
$requestBody->setExp(1508973711);

$result = $graphServiceClient->trustFramework()->keySets()->byTrustFrameworkKeySetId('trustFrameworkKeySet-id')->uploadSecret()->post($requestBody)->wait();

```