---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityGovernance()->roleManagementAlerts()->alerts()->byUnifiedRoleManagementAlertId('unifiedRoleManagementAlert-id')->alertIncidents()->get()->wait();

```