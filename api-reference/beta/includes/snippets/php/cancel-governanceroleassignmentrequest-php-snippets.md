---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->privilegedAccess()->byPrivilegedAccessId('privilegedAccess-id')->roleAssignmentRequests()->byGovernanceRoleAssignmentRequestId('governanceRoleAssignmentRequest-id')->cancel()->post()->wait();

```