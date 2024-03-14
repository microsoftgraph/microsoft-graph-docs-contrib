---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->auditLogs()->directoryAudits()->byDirectoryAuditId('directoryAudit-id')->get()->wait();

```