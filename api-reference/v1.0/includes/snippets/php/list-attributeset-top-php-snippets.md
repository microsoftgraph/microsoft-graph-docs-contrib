---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AttributeSetsRequestBuilderGetRequestConfiguration();
$queryParameters = AttributeSetsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 10;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->directory()->attributeSets()->get($requestConfiguration)->wait();

```