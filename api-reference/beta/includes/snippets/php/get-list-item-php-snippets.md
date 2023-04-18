---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ListItemRequestBuilderGetRequestConfiguration();
$queryParameters = ListItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["fields"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sitesById('site-id')->listsById('list-id')->itemsById('listItem-id')->get($requestConfiguration);


```