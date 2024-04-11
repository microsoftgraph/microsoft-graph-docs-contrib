---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->roleManagement()->exchange()->roleAssignments()->byUnifiedRoleAssignmentId('unifiedRoleAssignment-id')->delete()->wait();

```