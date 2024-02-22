---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->admin()->windows()->updates()->updatePolicies()->byUpdatePolicyId('updatePolicy-id')->complianceChanges()->byComplianceChangeId('complianceChange-id')->delete()->wait();

```