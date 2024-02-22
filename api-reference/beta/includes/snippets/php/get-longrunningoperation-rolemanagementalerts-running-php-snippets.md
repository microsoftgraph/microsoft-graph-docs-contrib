---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityGovernance()->roleManagementAlerts()->operations()->byLongRunningOperationId('longRunningOperation-id')->get()->wait();

```