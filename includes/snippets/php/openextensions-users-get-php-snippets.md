---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new MeRequestBuilderGetRequestConfiguration();

$queryParameters = new MeRequestBuilderGetQueryParameters();
$queryParameters->select = ["id","displayName","mail","mobilePhone"];
$queryParameters->expand = ["extensions"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->me()->get($requestConfiguration);


```