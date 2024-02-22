---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->directory()->subscriptions()->byCompanySubscriptionId('companySubscription-id')->get()->wait();

```