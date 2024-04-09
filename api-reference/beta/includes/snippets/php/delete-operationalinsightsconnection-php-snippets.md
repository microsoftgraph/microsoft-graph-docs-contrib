---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->admin()->windows()->updates()->resourceConnections()->byResourceConnectionId('resourceConnection-id')->delete()->wait();

```