---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WindowsInformationProtectionAppLockerFile();
$requestBody->setOdataType('#microsoft.graph.windowsInformationProtectionAppLockerFile');

$requestBody->setDisplayName('Display Name value');

$requestBody->setFileHash('File Hash value');

$requestBody->setFile(base64_decode('ZmlsZQ=='));

$requestBody->setVersion('Version value');



$result = $graphServiceClient->deviceAppManagement()->windowsInformationProtectionPolicies()->byWindowsInformationProtectionPolicyId('windowsInformationProtectionPolicy-id')->exemptAppLockerFiles()->byWindowsInformationProtectionAppLockerFileId('windowsInformationProtectionAppLockerFile-id')->patch($requestBody);


```