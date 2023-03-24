---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new LanguagesRequestBuilderGetRequestConfiguration();

$queryParameters = new LanguagesRequestBuilderGetQueryParameters();
$queryParameters->filter = "isEnabled eq true";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identity()->b2cUserFlowsById('b2cIdentityUserFlow-id')->languages()->get($requestConfiguration);


```