---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->roleManagement()->exchange()->roleAssignments()->byUnifiedRoleAssignmentId('unifiedRoleAssignment-id')->get()->wait();

```