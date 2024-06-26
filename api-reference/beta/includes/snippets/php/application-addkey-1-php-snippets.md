---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Applications\Item\AddKey\AddKeyPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\KeyCredential;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddKeyPostRequestBody();
$keyCredential = new KeyCredential();
$keyCredential->setType('AsymmetricX509Cert');
$keyCredential->setUsage('Verify');
$keyCredential->setKey(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('MIIDYDCCAki...')));
$requestBody->setKeyCredential($keyCredential);
$requestBody->setPasswordCredential(null);
$requestBody->setProof('eyJ0eXAiOiJ...');

$result = $graphServiceClient->applications()->byApplicationId('application-id')->addKey()->post($requestBody)->wait();

```