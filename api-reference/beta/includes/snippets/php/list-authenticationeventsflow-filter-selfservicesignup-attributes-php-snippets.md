---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AuthenticationEventsFlowsRequestBuilderGetRequestConfiguration();
$queryParameters = AuthenticationEventsFlowsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/any";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->authenticationEventsFlows()->get($requestConfiguration);


```