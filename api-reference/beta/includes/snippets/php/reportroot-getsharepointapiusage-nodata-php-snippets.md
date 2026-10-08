---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->reports()->getSharePointApiUsageWithDateWithAppId('{appId}', new \DateTime('{date}'))->get()->wait();

```