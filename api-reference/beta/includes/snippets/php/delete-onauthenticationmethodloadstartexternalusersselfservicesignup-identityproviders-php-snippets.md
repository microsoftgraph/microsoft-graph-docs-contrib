---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identity()->authenticationEventsFlows()->byAuthenticationEventsFlowId('authenticationEventsFlow-id')->graphExternalUsersSelfServiceSignUpEventsFlow()->onAuthenticationMethodLoadStart()->graphOnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp()->identityProviders()->byIdentityProviderBaseId('identityProviderBase-id')->ref()->delete()->wait();

```