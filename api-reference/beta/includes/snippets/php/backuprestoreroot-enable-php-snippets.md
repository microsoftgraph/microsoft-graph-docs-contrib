---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Solutions\BackupRestore\Enable\EnablePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EnablePostRequestBody();
$requestBody->setAppOwnerTenantId('23014d8c-71fe-4d00-a01a-31850bc5b42a');

$result = $graphServiceClient->solutions()->backupRestore()->enable()->post($requestBody)->wait();

```