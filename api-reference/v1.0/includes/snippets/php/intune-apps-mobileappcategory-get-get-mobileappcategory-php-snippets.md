---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceAppManagement()->mobileAppCategories()->byMobileAppCategoryId('mobileAppCategory-id')->get()->wait();

```