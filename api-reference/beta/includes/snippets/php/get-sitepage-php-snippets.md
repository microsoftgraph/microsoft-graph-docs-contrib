---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new SitePageRequestBuilderGetRequestConfiguration();

$queryParameters = new SitePageRequestBuilderGetQueryParameters();
$queryParameters->select = ["id","title"];
$queryParameters->expand = ["webparts"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->sitesById('site-id')->pagesById('sitePage-id')->get($requestConfiguration);


```