---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Fido2AuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.fido2AuthenticationMethodConfiguration');
$requestBody->setState(new AuthenticationMethodState('enabled'));
$requestBody->setIsAttestationEnforced(true);

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```