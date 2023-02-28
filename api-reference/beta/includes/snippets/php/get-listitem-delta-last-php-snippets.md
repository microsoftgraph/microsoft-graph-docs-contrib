---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ListItemRequestBuilderGetRequestConfiguration();

$queryParameters = new ListItemRequestBuilderGetQueryParameters();
$queryParameters->token = "1230919asd190410jlka";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->sitesById('site-id')->listsById('list-id')->itemsById('listItem-id')->get($requestConfiguration);


```