---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CrossTenantAccessSettings();
$requestBody->setOdataType('#microsoft.graph.networkaccess.crossTenantAccessSettings');
$requestBody->setNetworkPacketTaggingStatus(new Status('enabled'));

$result = $graphServiceClient->networkAccess()->settings()->crossTenantAccess()->patch($requestBody)->wait();

```