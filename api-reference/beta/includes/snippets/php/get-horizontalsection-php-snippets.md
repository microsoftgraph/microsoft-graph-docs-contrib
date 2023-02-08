---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new HorizontalSectionRequestBuilderGetRequestConfiguration();

$queryParameters = new HorizontalSectionRequestBuilderGetQueryParameters();
$queryParameters->select = ["id","expand=columns"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->sitesById('site-id')->pagesById('sitePage-id')->canvasLayout()->horizontalSectionsById('horizontalSection-id')->get($requestConfiguration);


```