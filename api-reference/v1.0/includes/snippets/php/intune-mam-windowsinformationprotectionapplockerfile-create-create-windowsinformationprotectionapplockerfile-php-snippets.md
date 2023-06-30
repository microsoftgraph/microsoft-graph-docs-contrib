---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WindowsInformationProtectionAppLockerFile();
$requestBody->set@odatatype('#microsoft.graph.windowsInformationProtectionAppLockerFile');

$requestBody->setDisplayName('Display Name value');

$requestBody->setFileHash('File Hash value');

$requestBody->setFile(base64_decode('ZmlsZQ=='));

$requestBody->setVersion('Version value');



$result = $graphServiceClient->deviceAppManagement()->windowsInformationProtectionPolicies()->byWindowsInformationProtectionPolicieId('windowsInformationProtectionPolicy-id')->exemptAppLockerFiles()->post($requestBody);


```