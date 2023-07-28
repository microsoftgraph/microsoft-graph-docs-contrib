---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new FilesRequestBuilderGetRequestConfiguration();
$queryParameters = FilesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 5;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->cases()->ediscoveryCases()->byEdiscoveryCaseId('ediscoveryCase-id')->reviewSets()->byEdiscoveryReviewSetId('ediscoveryReviewSet-id')->files()->get($requestConfiguration);


```