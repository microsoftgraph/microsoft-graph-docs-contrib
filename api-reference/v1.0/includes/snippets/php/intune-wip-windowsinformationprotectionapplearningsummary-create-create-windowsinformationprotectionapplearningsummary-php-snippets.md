---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WindowsInformationProtectionAppLearningSummary();
$requestBody->set@odatatype('#microsoft.graph.windowsInformationProtectionAppLearningSummary');

$requestBody->setApplicationName('Application Name value');

$requestBody->setApplicationType(new ApplicationType('desktop'));

$requestBody->setDeviceCount(11);



$result = $graphServiceClient->deviceManagement()->windowsInformationProtectionAppLearningSummaries()->post($requestBody);


```