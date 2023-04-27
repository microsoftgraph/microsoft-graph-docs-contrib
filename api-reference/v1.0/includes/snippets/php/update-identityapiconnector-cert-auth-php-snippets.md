---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentityApiConnector();
$authenticationConfiguration = new ApiAuthenticationConfigurationBase();
$authenticationConfiguration->set@odatatype('#microsoft.graph.pkcs12Certificate');

$additionalData = [
		'pkcs12Value' => 'eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA', 
		'password' => 'secret', 
];
$authenticationConfiguration->setAdditionalData($additionalData);



$requestBody->setAuthenticationConfiguration($authenticationConfiguration);


$result = $graphServiceClient->identity()->apiConnectorsById('identityApiConnector-id')->patch($requestBody);


```