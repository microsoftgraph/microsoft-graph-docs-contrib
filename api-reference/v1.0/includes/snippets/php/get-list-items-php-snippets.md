---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ItemsRequestBuilderGetRequestConfiguration();

$queryParameters = new ItemsRequestBuilderGetQueryParameters();
$queryParameters->expand = ["fields(select=Name,Color,Quantity)"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->sitesById('site-id')->listsById('list-id')->items()->get($requestConfiguration);


```