---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->solutions()->backupRestore()->exchangeProtectionPolicies()->byExchangeProtectionPolicyId('exchangeProtectionPolicy-id')->mailboxProtectionUnitsBulkAdditionJobs()->get()->wait();

```