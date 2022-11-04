---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AppConsentRequestsRequestBuilderGetRequestConfiguration();

$queryParameters = new AppConsentRequestsRequestBuilderGetQueryParameters();
$queryParameters->filter = "userConsentRequests/any ";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->appConsent()->appConsentRequests()->get($requestConfiguration);


```