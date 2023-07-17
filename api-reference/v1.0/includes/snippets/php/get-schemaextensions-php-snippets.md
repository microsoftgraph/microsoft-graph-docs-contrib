---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new SchemaExtensionsRequestBuilderGetRequestConfiguration();
$queryParameters = SchemaExtensionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "id eq 'graphlearn_test'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->schemaExtensions()->get($requestConfiguration);


```