---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentityApiConnector();
$authenticationConfiguration = new Pkcs12Certificate();
$authenticationConfiguration->setOdataType('#microsoft.graph.pkcs12Certificate');

$authenticationConfiguration->setPkcs12Value('eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA');

$authenticationConfiguration->setPassword('secret');


$requestBody->setAuthenticationConfiguration($authenticationConfiguration);


$result = $graphServiceClient->identity()->apiConnectors()->byIdentityApiConnectorId('identityApiConnector-id')->patch($requestBody);


```