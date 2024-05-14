---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ReferenceCreate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/beta/users/{id}');

$graphServiceClient->identityGovernance()->entitlementManagement()->connectedOrganizations()->byConnectedOrganizationId('connectedOrganization-id')->internalSponsors()->ref()->post($requestBody)->wait();

```