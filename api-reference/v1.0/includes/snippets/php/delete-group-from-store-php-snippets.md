---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->sites()->bySiteId('site-id')->termStore()->groups()->byGroupId('group-id')->delete()->wait();

```