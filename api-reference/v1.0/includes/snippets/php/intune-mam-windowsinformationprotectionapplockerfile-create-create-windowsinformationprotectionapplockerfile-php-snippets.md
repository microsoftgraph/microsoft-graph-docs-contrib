---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WindowsInformationProtectionAppLockerFile();
$requestBody->setOdataType('#microsoft.graph.windowsInformationProtectionAppLockerFile');
$requestBody->setDisplayName('Display Name value');
$requestBody->setFileHash('File Hash value');
$requestBody->setFile(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('ZmlsZQ==')));
$requestBody->setVersion('Version value');

$result = $graphServiceClient->deviceAppManagement()->windowsInformationProtectionPolicies()->byWindowsInformationProtectionPolicyId('windowsInformationProtectionPolicy-id')->exemptAppLockerFiles()->post($requestBody)->wait();

```