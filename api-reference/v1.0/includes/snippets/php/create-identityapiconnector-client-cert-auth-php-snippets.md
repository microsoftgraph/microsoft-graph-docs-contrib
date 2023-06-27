---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentityApiConnector();
$requestBody->setDisplayName('Test API');

$requestBody->setTargetUrl('https://someotherapi.com/api');

$authenticationConfiguration = new Pkcs12Certificate();
$authenticationConfiguration->set@odatatype('#microsoft.graph.pkcs12Certificate');

$authenticationConfiguration->setPkcs12Value('eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA');

$authenticationConfiguration->setPassword('CertificatePassword');


$requestBody->setAuthenticationConfiguration($authenticationConfiguration);


$result = $graphServiceClient->identity()->apiConnectors()->post($requestBody);


```