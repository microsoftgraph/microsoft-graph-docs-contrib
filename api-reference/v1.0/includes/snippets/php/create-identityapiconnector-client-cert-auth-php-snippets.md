---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\IdentityApiConnector;
use Microsoft\Graph\Generated\Models\Pkcs12Certificate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentityApiConnector();
$requestBody->setDisplayName('Test API');
$requestBody->setTargetUrl('https://someotherapi.com/api');
$authenticationConfiguration = new Pkcs12Certificate();
$authenticationConfiguration->setOdataType('#microsoft.graph.pkcs12Certificate');
$authenticationConfiguration->setPkcs12Value('eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA');
$authenticationConfiguration->setPassword('CertificatePassword');
$requestBody->setAuthenticationConfiguration($authenticationConfiguration);

$result = $graphServiceClient->identity()->apiConnectors()->post($requestBody)->wait();

```