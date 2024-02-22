---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CloudPcUserSettingItemRequestBuilderGetRequestConfiguration();
$queryParameters = CloudPcUserSettingItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["assignments"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->userSettings()->byCloudPcUserSettingId('cloudPcUserSetting-id')->get($requestConfiguration)->wait();

```