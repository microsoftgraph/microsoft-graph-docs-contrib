---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CloudPcExternalPartnerSetting();
$requestBody->set@odatatype('#microsoft.graph.cloudPcExternalPartnerSetting');

$requestBody->setPartnerId('198d7140-80bb-4843-8cc4-811377a49a92');

$requestBody->setEnableConnection(true);



$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->externalPartnerSettings()->post($requestBody);


```