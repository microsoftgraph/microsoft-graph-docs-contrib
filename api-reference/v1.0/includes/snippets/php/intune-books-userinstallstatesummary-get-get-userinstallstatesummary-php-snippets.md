---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceAppManagement()->managedEBooks()->byManagedEBookId('managedEBook-id')->userStateSummary()->byUserInstallStateSummaryId('userInstallStateSummary-id')->get()->wait();

```