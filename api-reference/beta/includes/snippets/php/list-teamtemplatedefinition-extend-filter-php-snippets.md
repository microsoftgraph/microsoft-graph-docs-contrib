---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new TeamTemplatesRequestBuilderGetRequestConfiguration();

$queryParameters = new TeamTemplatesRequestBuilderGetQueryParameters();
$queryParameters->expand = ["definitions"];
$queryParameters->filter = "definitions/any";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->teamwork()->teamTemplates()->get($requestConfiguration);


```