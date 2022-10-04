---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ApplicationRequestBuilderGetRequestConfiguration();

$queryParameters = new ApplicationRequestBuilderGetQueryParameters();
$queryParameters->select = ["id","appId","displayName","requiredResourceAccess"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->applicationsById('application-id')->get($requestConfiguration);


```