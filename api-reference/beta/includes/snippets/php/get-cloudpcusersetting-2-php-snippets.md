---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CloudPcUserSettingItemRequestBuilderGetRequestConfiguration();
$queryParameters = CloudPcUserSettingItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["assignments"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->userSettings()->byCloudPcUserSettingId('cloudPcUserSetting-id')->get($requestConfiguration)->wait();

```