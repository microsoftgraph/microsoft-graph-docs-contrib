---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new PoliciesRequestBuilderGetRequestConfiguration();

$queryParameters = new PoliciesRequestBuilderGetQueryParameters();
$queryParameters->filter = "displayName eq 'SimplePolicy1' or displayName eq 'SimplePolicy2'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identity()->conditionalAccess()->policies()->get($requestConfiguration);


```