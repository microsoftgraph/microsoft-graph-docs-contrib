---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\RemoteNetwork;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\Region;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RemoteNetwork();
$requestBody->setName('Bellevue branch');
$requestBody->setRegion(new Region('canadaEast'));

$result = $graphServiceClient->networkAccess()->connectivity()->remoteNetworks()->post($requestBody)->wait();

```