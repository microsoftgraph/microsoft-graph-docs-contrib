---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ListItemVersionRequestBuilderGetRequestConfiguration();

$queryParameters = new ListItemVersionRequestBuilderGetQueryParameters();
$queryParameters->expand = ["fields"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->sitesById('site-id')->listsById('list-id')->itemsById('listItem-id')->versionsById('listItemVersion-id')->get($requestConfiguration);


```