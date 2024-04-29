---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityGovernance()->roleManagementAlerts()->alerts()->byUnifiedRoleManagementAlertId('unifiedRoleManagementAlert-id')->alertIncidents()->byUnifiedRoleManagementAlertIncidentId('unifiedRoleManagementAlertIncident-id')->get()->wait();

```