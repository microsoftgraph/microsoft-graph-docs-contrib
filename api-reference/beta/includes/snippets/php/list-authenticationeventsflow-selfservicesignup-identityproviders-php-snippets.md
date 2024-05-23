---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Identity\AuthenticationEventsFlows\AuthenticationEventsFlowsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AuthenticationEventsFlowsRequestBuilderGetRequestConfiguration();
$queryParameters = AuthenticationEventsFlowsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAuthenticationMethodLoadStart/microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp/identityProviders/any(idp:idp/id eq 'Google-OAUTH')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->authenticationEventsFlows()->get($requestConfiguration)->wait();

```