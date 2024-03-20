---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->roleManagement()->directory()->roleDefinitions()->byUnifiedRoleDefinitionId('unifiedRoleDefinition-id')->delete()->wait();

```