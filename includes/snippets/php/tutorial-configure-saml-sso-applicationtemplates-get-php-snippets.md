---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ApplicationTemplatesRequestBuilderGetRequestConfiguration();
$queryParameters = ApplicationTemplatesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "displayName eq 'AWS IAM Identity Center '";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->applicationTemplates()->get($requestConfiguration);


```