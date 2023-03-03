---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ApplicationTemplatesRequestBuilderGetRequestConfiguration();

$queryParameters = new ApplicationTemplatesRequestBuilderGetQueryParameters();
$queryParameters->filter = "displayName eq 'AWS IAM Identity Center '";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->applicationTemplates()->get($requestConfiguration);


```