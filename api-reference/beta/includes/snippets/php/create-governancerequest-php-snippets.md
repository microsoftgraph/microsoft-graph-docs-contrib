---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TenantGovernanceServices\GovernanceRequest;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GovernanceRequest();
$requestBody->setGovernedTenantId('bbbbcccc-1111-dddd-2222-eeee3333ffff');
$additionalData = [
	'governancePolicyTemplate@odata.bind' => 'https://graph.microsoft.com/beta/directory/tenantGovernance/governancePolicyTemplates/d3d3d3d3-eeee-ffff-aaaa-b4b4b4b4b4b4',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->directory()->tenantGovernance()->governanceRequests()->post($requestBody)->wait();

```