---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\CrossTenantAccessSettings;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\Status;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantAccessSettings();
$requestBody->setOdataType('#microsoft.graph.networkaccess.crossTenantAccessSettings');
$requestBody->setNetworkPacketTaggingStatus(new Status('enabled'));

$result = $graphServiceClient->networkAccess()->settings()->crossTenantAccess()->patch($requestBody)->wait();

```