---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DelegatedAdminRelationshipRequest;
use Microsoft\Graph\Generated\Models\DelegatedAdminRelationshipRequestAction;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DelegatedAdminRelationshipRequest();
$requestBody->setAction(new DelegatedAdminRelationshipRequestAction('lockForApproval'));

$result = $graphServiceClient->tenantRelationships()->delegatedAdminRelationships()->byDelegatedAdminRelationshipId('delegatedAdminRelationship-id')->requests()->post($requestBody)->wait();

```