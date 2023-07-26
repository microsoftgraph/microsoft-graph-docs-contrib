---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcExternalPartnerSetting();
$requestBody->setOdataType('#microsoft.graph.cloudPcExternalPartnerSetting');

$requestBody->setEnableConnection(true);



$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->externalPartnerSettings()->byCloudPcExternalPartnerSettingId('cloudPcExternalPartnerSetting-id')->patch($requestBody);


```