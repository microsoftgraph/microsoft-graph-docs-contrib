---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->solutions()->sharePoint()->migrations()->crossOrganizationMigrationTasks()->bySharePointMigrationTaskId('sharePointMigrationTask-id')->get()->wait();

```