---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WindowsInformationProtectionNetworkLearningSummary();
$requestBody->setOdataType('#microsoft.graph.windowsInformationProtectionNetworkLearningSummary');

$requestBody->setUrl('Url value');

$requestBody->setDeviceCount(11);



$result = $graphServiceClient->deviceManagement()->windowsInformationProtectionNetworkLearningSummaries()->byWindowsInformationProtectionNetworkLearningSummaryId('windowsInformationProtectionNetworkLearningSummary-id')->patch($requestBody);


```