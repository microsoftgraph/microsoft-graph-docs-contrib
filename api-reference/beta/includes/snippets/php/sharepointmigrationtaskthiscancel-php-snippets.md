---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->solutions()->sharePoint()->migrations()->crossOrganizationMigrationTasks()->bySharePointMigrationTaskId('sharePointMigrationTask-id')->cancel()->post()->wait();

```