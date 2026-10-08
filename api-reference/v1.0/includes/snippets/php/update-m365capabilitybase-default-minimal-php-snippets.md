---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\M365CapabilityBase;
use Microsoft\Graph\Generated\Models\M365CapabilityInboundAccess;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new M365CapabilityBase();
$inboundAccess = new M365CapabilityInboundAccess();
$inboundAccess->setIsAllowed(false);
$requestBody->setInboundAccess($inboundAccess);

$result = $graphServiceClient->policies()->crossTenantAccessPolicy()->escapedDefault()->m365Capabilities()->byM365CapabilityBaseName('m365CapabilityBase-name')->patch($requestBody)->wait();

```