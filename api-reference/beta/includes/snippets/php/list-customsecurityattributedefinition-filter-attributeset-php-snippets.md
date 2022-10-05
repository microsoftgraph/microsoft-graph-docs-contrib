---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new CustomSecurityAttributeDefinitionsRequestBuilderGetRequestConfiguration();

$queryParameters = new CustomSecurityAttributeDefinitionsRequestBuilderGetQueryParameters();
$queryParameters->filter = "attributeSet eq 'Engineering' and status eq 'Available' and type eq 'String'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->directory()->customSecurityAttributeDefinitions()->get($requestConfiguration);


```