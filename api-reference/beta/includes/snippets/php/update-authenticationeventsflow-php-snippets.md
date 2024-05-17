---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ReferenceCreate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/beta/identityProviders/Google-OAUTH');

$graphServiceClient->identity()->authenticationEventsFlows()->byAuthenticationEventsFlowId('authenticationEventsFlow-id')->graphExternalUsersSelfServiceSignUpEventsFlow()->onAuthenticationMethodLoadStart()->graphOnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp()->identityProviders()->ref()->post($requestBody)->wait();

```