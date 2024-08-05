---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\DelegatedAdminRelationshipRequest;
use Microsoft\Graph\Beta\Generated\Models\DelegatedAdminRelationshipRequestAction;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DelegatedAdminRelationshipRequest();
$requestBody->setAction(new DelegatedAdminRelationshipRequestAction('lockForApproval'));

$result = $graphServiceClient->tenantRelationships()->delegatedAdminRelationships()->byDelegatedAdminRelationshipId('delegatedAdminRelationship-id')->requests()->post($requestBody)->wait();

```