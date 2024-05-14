---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->roleManagement()->cloudPC()->roleDefinitions()->byUnifiedRoleDefinitionId('unifiedRoleDefinition-id')->delete()->wait();

```