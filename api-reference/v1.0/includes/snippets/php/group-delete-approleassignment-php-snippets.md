---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->groups()->byGroupId('group-id')->appRoleAssignments()->byAppRoleAssignmentId('appRoleAssignment-id')->delete()->wait();

```