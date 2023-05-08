---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UserConsentRequestRequestBuilderGetRequestConfiguration();
$queryParameters = UserConsentRequestRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = " ";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->appConsent()->appConsentRequestsById('appConsentRequest-id')->userConsentRequestsById('userConsentRequest-id')->get($requestConfiguration);


```