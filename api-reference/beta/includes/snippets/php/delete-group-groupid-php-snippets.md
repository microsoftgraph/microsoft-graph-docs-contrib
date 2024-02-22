---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->policies()->mobileAppManagementPolicies()->byMobilityManagementPolicyId('mobilityManagementPolicy-id')->includedGroups()->byGroupId('group-id')->ref()->delete()->wait();

```