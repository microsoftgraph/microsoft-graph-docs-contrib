---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TenantGovernanceServices\TenantGovernanceSetting;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TenantGovernanceSetting();
$requestBody->setCanReceiveInvitations(true);

$result = $graphServiceClient->directory()->tenantGovernance()->settings()->patch($requestBody)->wait();

```