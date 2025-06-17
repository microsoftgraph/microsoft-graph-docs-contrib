---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->employeeExperience()->roles()->byEngagementRoleId('engagementRole-id')->members()->byEngagementRoleMemberId('engagementRoleMember-id')->delete()->wait();

```