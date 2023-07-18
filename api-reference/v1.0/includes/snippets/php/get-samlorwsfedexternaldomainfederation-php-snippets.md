---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new IdentityProviderBaseRequestBuilderGetRequestConfiguration();
$queryParameters = IdentityProviderBaseRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "domains/any(x: x/id eq 'contoso.com')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->directory()->federationConfigurations()->byIdentityProviderBaseId('identityProviderBase-id')->get($requestConfiguration);


```