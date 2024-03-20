---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->policies()->crossTenantAccessPolicy()->templates()->multiTenantOrganizationIdentitySynchronization()->resetToDefaultSettings()->post()->wait();

```