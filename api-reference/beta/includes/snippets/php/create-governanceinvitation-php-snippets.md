---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TenantGovernanceServices\GovernanceInvitation;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GovernanceInvitation();
$requestBody->setGoverningTenantId('aaaabbbb-0000-cccc-1111-dddd2222eeee');

$result = $graphServiceClient->directory()->tenantGovernance()->governanceInvitations()->post($requestBody)->wait();

```