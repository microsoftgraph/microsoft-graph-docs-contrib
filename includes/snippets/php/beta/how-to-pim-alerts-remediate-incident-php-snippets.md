---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identityGovernance()->roleManagementAlerts()->alerts()->byUnifiedRoleManagementAlertId('unifiedRoleManagementAlert-id')->alertIncidents()->byUnifiedRoleManagementAlertIncidentId('unifiedRoleManagementAlertIncident-id')->remediate()->post()->wait();

```