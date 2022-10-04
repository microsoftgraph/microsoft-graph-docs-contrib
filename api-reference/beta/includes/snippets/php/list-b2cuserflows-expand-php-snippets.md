---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new B2cUserFlowsRequestBuilderGetRequestConfiguration();

$queryParameters = new B2cUserFlowsRequestBuilderGetQueryParameters();
$queryParameters->expand = ["identityProviders"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identity()->b2cUserFlows()->get($requestConfiguration);


```