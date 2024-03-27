---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceAppManagement()->mdmWindowsInformationProtectionPolicies()->byMdmWindowsInformationProtectionPolicyId('mdmWindowsInformationProtectionPolicy-id')->delete()->wait();

```