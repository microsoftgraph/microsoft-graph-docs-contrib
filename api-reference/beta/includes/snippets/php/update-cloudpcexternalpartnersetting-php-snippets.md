---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CloudPcExternalPartnerSetting();
$requestBody->set@odatatype('#microsoft.graph.cloudPcExternalPartnerSetting');

$requestBody->setEnableConnection(true);



$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->externalPartnerSettingsById('cloudPcExternalPartnerSetting-id')->patch($requestBody);


```