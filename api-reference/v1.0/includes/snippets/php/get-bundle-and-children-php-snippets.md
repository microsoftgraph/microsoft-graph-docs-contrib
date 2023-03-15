---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new DriveItemRequestBuilderGetRequestConfiguration();

$queryParameters = new DriveItemRequestBuilderGetQueryParameters();
$queryParameters->expand = ["children"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->drive()->itemsById('driveItem-id')->get($requestConfiguration);


```