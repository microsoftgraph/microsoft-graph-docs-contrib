---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\TrustFramework\KeySets\Item\UploadPkcs12\UploadPkcs12PostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UploadPkcs12PostRequestBody();
$requestBody->setKey('Base64-encoded-pfx-content');
$requestBody->setPassword('password-value');

$result = $graphServiceClient->trustFramework()->keySets()->byTrustFrameworkKeySetId('trustFrameworkKeySet-id')->uploadPkcs12()->post($requestBody)->wait();

```