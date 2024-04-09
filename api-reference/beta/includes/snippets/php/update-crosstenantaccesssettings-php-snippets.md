---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CrossTenantAccessSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantAccessSettings();
$requestBody->setOdataType('#microsoft.graph.networkaccess.crossTenantAccessSettings');
$requestBody->setNetworkPacketTaggingStatus(new Status('enabled'));

$result = $graphServiceClient->networkAccess()->settings()->crossTenantAccess()->patch($requestBody)->wait();

```