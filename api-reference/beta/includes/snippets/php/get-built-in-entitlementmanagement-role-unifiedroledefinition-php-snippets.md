---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->roleManagement()->entitlementManagement()->roleDefinitions()->byUnifiedRoleDefinitionId('unifiedRoleDefinition-id')->get()->wait();

```