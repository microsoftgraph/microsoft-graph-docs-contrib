---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->security()->auditLog()->queries()->byAuditLogQueryId('auditLogQuery-id')->get()->wait();

```