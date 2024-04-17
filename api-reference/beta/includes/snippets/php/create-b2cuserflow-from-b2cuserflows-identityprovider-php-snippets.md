---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Identity\B2cUserFlows\B2cUserFlowsRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Generated\Models\B2cIdentityUserFlow;
use Microsoft\Graph\Generated\Models\IdentityProvider;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new B2cIdentityUserFlow();
$requestBody->setId('Customer');
$requestBody->setUserFlowType(new UserFlowType('signUpOrSignIn'));
$requestBody->setUserFlowTypeVersion(3);
$identityProvidersIdentityProvider1 = new IdentityProvider();
$identityProvidersIdentityProvider1->setId('Facebook-OAuth');
$identityProvidersArray []= $identityProvidersIdentityProvider1;
$requestBody->setIdentityProviders($identityProvidersArray);

$requestConfiguration = new B2cUserFlowsRequestBuilderPostRequestConfiguration();
$headers = [
	'Location' => 'https://graph.microsoft.com/beta/identity/b2cUserFlows(\'B2C_1_Customer\')',
];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->identity()->b2cUserFlows()->post($requestBody, $requestConfiguration)->wait();

```