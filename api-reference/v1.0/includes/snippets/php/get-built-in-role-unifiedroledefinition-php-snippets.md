---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->roleManagement()->directory()->roleDefinitions()->byUnifiedRoleDefinitionId('unifiedRoleDefinition-id')->get()->wait();

```