---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->directoryRolesWithRoleTemplateId('{roleTemplateId}', )->get()->wait();

```