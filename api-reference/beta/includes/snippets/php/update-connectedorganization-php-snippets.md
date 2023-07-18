---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConnectedOrganization();
$requestBody->setDisplayName('Connected organization new name');

$requestBody->setDescription('Connected organization new description');

$requestBody->setState(new ConnectedOrganizationState('configured'));



$result = $graphServiceClient->identityGovernance()->entitlementManagement()->connectedOrganizations()->byConnectedOrganizationId('connectedOrganization-id')->patch($requestBody);


```