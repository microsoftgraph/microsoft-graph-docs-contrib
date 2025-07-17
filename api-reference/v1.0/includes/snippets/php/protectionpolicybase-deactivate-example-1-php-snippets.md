---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->solutions()->backupRestore()->protectionPolicies()->byProtectionPolicyBaseId('protectionPolicyBase-id')->deactivate()->post()->wait();

```