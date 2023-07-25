---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WindowsInformationProtectionNetworkLearningSummary();
$requestBody->set@odatatype('#microsoft.graph.windowsInformationProtectionNetworkLearningSummary');

$requestBody->setUrl('Url value');

$requestBody->setDeviceCount(11);



$result = $graphServiceClient->deviceManagement()->windowsInformationProtectionNetworkLearningSummaries()->byWindowsInformationProtectionNetworkLearningSummarieId('windowsInformationProtectionNetworkLearningSummary-id')->patch($requestBody);


```