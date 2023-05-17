---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new DeviceRequestBuilderGetRequestConfiguration();
$queryParameters = DeviceRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","extensionAttributes"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->devicesById('device-id')->get($requestConfiguration);


```