---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceAppManagement()->mdmWindowsInformationProtectionPolicies()->byMdmWindowsInformationProtectionPolicyId('mdmWindowsInformationProtectionPolicy-id')->get()->wait();

```