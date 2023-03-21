---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new SchemaExtensionsRequestBuilderGetRequestConfiguration();

$queryParameters = new SchemaExtensionsRequestBuilderGetQueryParameters();
$queryParameters->filter = "id eq 'graphlearn_test'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->schemaExtensions()->get($requestConfiguration);


```