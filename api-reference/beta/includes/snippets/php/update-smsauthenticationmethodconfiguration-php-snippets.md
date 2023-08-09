---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SmsAuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.smsAuthenticationMethodConfiguration');

$requestBody->setId('Sms');

$requestBody->setState(new AuthenticationMethodState('enabled'));



$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody);


```