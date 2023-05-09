---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new VerticalSectionRequestBuilderGetRequestConfiguration();
$queryParameters = VerticalSectionRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["emphasis","expand=webparts"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->sitesById('site-id')->pagesById('sitePage-id')->canvasLayout()->verticalSection()->get($requestConfiguration);


```