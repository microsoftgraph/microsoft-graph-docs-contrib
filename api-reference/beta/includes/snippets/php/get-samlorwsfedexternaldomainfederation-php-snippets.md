---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new IdentityProviderBaseRequestBuilderGetRequestConfiguration();

$queryParameters = new IdentityProviderBaseRequestBuilderGetQueryParameters();
$queryParameters->filter = "domains/any";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->directory()->federationConfigurationsById('identityProviderBase-id')->get($requestConfiguration);


```