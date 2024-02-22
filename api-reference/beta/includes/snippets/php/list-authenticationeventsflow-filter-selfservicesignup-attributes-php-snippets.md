---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AuthenticationEventsFlowsRequestBuilderGetRequestConfiguration();
$queryParameters = AuthenticationEventsFlowsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/any(attribute:attribute/id eq 'city')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->authenticationEventsFlows()->get($requestConfiguration)->wait();

```