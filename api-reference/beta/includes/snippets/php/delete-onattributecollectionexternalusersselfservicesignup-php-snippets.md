---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new $refDeleteRequestBody();
$additionalData = [
	'@odata.id' => 'https://graph.microsoft.com/beta/identity/userFlowAttributes/city',
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->identity()->authenticationEventsFlows()->byAuthenticationEventsFlowId('authenticationEventsFlow-id')->graphExternalUsersSelfServiceSignUpEventsFlow()->onAttributeCollection()->graphOnAttributeCollectionExternalUsersSelfServiceSignUp()->attributes()->ref()->delete($requestBody)->wait();

```