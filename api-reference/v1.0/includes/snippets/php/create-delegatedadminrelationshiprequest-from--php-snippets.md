---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DelegatedAdminRelationshipRequest();
$requestBody->setAction(new DelegatedAdminRelationshipRequestAction('lockForApproval'));

$result = $graphServiceClient->tenantRelationships()->delegatedAdminRelationships()->byDelegatedAdminRelationshipId('delegatedAdminRelationship-id')->requests()->post($requestBody)->wait();

```