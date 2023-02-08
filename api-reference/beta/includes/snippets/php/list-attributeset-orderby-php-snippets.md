---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AttributeSetsRequestBuilderGetRequestConfiguration();

$queryParameters = new AttributeSetsRequestBuilderGetQueryParameters();
$queryParameters->orderby = ["id"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->directory()->attributeSets()->get($requestConfiguration);


```