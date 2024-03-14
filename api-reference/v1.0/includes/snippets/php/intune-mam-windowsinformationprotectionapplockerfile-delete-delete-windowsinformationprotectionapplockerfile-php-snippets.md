---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceAppManagement()->windowsInformationProtectionPolicies()->byWindowsInformationProtectionPolicyId('windowsInformationProtectionPolicy-id')->exemptAppLockerFiles()->byWindowsInformationProtectionAppLockerFileId('windowsInformationProtectionAppLockerFile-id')->delete()->wait();

```