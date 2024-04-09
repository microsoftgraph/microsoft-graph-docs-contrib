---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\$refDeleteRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new $refDeleteRequestBody();
$additionalData = [
	'@odata.id' => 'https://graph.microsoft.com/beta/identity/userFlowAttributes/city',
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->identity()->authenticationEventsFlows()->byAuthenticationEventsFlowId('authenticationEventsFlow-id')->graphExternalUsersSelfServiceSignUpEventsFlow()->onAttributeCollection()->graphOnAttributeCollectionExternalUsersSelfServiceSignUp()->attributes()->ref()->delete($requestBody)->wait();

```