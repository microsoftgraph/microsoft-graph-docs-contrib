---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->subscriptions()->bySubscriptionId('subscription-id')->reauthorize()->post()->wait();

```