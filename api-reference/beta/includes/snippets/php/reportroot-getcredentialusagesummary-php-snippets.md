---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new GetCredentialUsageSummaryWithPeriodRequestBuilderGetRequestConfiguration();
$queryParameters = GetCredentialUsageSummaryWithPeriodRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "feature eq 'registration'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->reports()->getCredentialUsageSummaryWithPeriod('{period}', )->get($requestConfiguration);


```