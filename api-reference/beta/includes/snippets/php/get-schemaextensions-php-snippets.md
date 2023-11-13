---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SchemaExtensionsRequestBuilderGetRequestConfiguration();
$queryParameters = SchemaExtensionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "id eq 'graphlearn_test'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->schemaExtensions()->get($requestConfiguration)->wait();

```