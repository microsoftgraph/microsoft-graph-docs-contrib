---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcExternalPartnerSetting();
$requestBody->setOdataType('#microsoft.graph.cloudPcExternalPartnerSetting');
$requestBody->setEnableConnection(true);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->externalPartnerSettings()->byCloudPcExternalPartnerSettingId('cloudPcExternalPartnerSetting-id')->patch($requestBody)->wait();

```