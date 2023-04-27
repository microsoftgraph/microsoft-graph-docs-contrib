---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AuthenticationMethodConfiguration();
$requestBody->set@odatatype('#microsoft.graph.emailAuthenticationMethodConfiguration');

$additionalData = [
		'allowExternalIdToUseEmailOtp' => 'disabled', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurationsById('authenticationMethodConfiguration-id')->patch($requestBody);


```