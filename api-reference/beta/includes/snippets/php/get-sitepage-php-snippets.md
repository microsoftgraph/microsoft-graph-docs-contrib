---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new SitePageRequestBuilderGetRequestConfiguration();
$queryParameters = SitePageRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","title"];
$queryParameters->expand = ["webparts"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sites()->bySiteId('site-id')->pages()->byPageId('sitePage-id')->get($requestConfiguration);


```