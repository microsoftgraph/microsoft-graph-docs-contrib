---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new CloudPcUserSettingRequestBuilderGetRequestConfiguration();

$queryParameters = new CloudPcUserSettingRequestBuilderGetQueryParameters();
$queryParameters->expand = ["assignments"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->deviceManagement()->virtualEndpoint()->userSettingsById('cloudPcUserSetting-id')->get($requestConfiguration);


```