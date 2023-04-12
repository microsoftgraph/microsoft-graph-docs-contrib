---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ConditionalAccessTemplateRequestBuilderGetRequestConfiguration();
$queryParameters = ConditionalAccessTemplateRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["details"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->conditionalAccess()->templatesById('conditionalAccessTemplate-id')->get($requestConfiguration);


```