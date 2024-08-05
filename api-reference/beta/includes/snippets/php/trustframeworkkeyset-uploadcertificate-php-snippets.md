---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\TrustFramework\KeySets\Item\UploadCertificate\UploadCertificatePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UploadCertificatePostRequestBody();
$requestBody->setKey('key-value');

$result = $graphServiceClient->trustFramework()->keySets()->byTrustFrameworkKeySetId('trustFrameworkKeySet-id')->uploadCertificate()->post($requestBody)->wait();

```