---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->sites()->bySiteId('site-id')->termStore()->sets()->bySetId('set-id')->relations()->get()->wait();

```