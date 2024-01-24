---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


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