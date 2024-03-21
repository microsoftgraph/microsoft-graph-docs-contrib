---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->policies()->crossTenantAccessPolicy()->escapedDefault()->resetToSystemDefault()->post()->wait();

```