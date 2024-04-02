---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->admin()->windows()->updates()->products()->byProductId('product-id')->microsoftGraphWindowsUpdatesGetKnownIssuesByTimeRangeWithDaysInPast(1)->get()->wait();

```