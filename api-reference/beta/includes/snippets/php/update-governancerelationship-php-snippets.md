---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TenantGovernanceServices\GovernanceRelationship;
use Microsoft\Graph\Beta\Generated\Models\TenantGovernanceServices\RelationshipStatus;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GovernanceRelationship();
$requestBody->setStatus(new RelationshipStatus('terminated'));

$result = $graphServiceClient->directory()->tenantGovernance()->governanceRelationships()->byGovernanceRelationshipId('governanceRelationship-id')->patch($requestBody)->wait();

```