---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\GovernanceRequest;
use Microsoft\Graph\Beta\Generated\Models\RequestStatus;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GovernanceRequest();
$requestBody->setStatus(new RequestStatus('accepted'));

$result = $graphServiceClient->directory()->tenantGovernance()->governanceRequests()->byGovernanceRequestId('governanceRequest-id')->patch($requestBody)->wait();

```