---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->subscribedSkus()->bySubscribedSkuId('subscribedSku-id')->get()->wait();

```