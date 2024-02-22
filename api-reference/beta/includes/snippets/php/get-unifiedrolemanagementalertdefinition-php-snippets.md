---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityGovernance()->roleManagementAlerts()->alertDefinitions()->byUnifiedRoleManagementAlertDefinitionId('unifiedRoleManagementAlertDefinition-id')->get()->wait();

```