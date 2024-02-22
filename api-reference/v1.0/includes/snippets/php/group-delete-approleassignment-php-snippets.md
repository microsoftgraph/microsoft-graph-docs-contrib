---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->groups()->byGroupId('group-id')->appRoleAssignments()->byAppRoleAssignmentId('appRoleAssignment-id')->delete()->wait();

```