---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new DeviceRequestBuilderGetRequestConfiguration();

$queryParameters = new DeviceRequestBuilderGetQueryParameters();
$queryParameters->select = ["id","extensionAttributes"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->devicesById('device-id')->get($requestConfiguration);


```