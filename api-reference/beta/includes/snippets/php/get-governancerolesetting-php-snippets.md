---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->privilegedAccess()->byPrivilegedAccessId('privilegedAccess-id')->roleSettings()->byGovernanceRoleSettingId('governanceRoleSetting-id')->get()->wait();

```