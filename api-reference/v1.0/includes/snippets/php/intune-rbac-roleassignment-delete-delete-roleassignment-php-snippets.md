---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->roleDefinitions()->byRoleDefinitionId('roleDefinition-id')->roleAssignments()->byRoleAssignmentId('roleAssignment-id')->delete()->wait();

```