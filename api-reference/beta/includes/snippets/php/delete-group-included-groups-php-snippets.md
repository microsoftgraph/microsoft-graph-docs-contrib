---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->policies()->mobileDeviceManagementPolicies()->byMobileDeviceManagementPolicyId('mobileDeviceManagementPolicy-id')->includedGroups()->byGroupId('group-id')->ref()->delete()->wait();

```