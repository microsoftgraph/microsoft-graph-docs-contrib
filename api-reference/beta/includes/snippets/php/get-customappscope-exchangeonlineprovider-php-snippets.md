---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->roleManagement()->exchange()->customAppScopes()->byCustomAppScopeId('customAppScope-id')->get()->wait();

```