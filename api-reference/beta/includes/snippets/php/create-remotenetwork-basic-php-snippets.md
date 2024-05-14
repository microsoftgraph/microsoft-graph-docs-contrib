---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\RemoteNetwork;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RemoteNetwork();
$requestBody->setName('Bellevue branch');
$requestBody->setRegion(new Region('canadaEast'));

$result = $graphServiceClient->networkAccess()->connectivity()->remoteNetworks()->post($requestBody)->wait();

```