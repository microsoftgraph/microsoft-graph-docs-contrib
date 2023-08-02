---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TenantCustomizedInformation();
$requestBody->setOdataType('#microsoft.graph.managedTenants.tenantCustomizedInformation');

$requestBody->setTenantId('String');

$contactsTenantContactInformation1 = new TenantContactInformation();
$contactsTenantContactInformation1->setOdataType('microsoft.graph.managedTenants.tenantContactInformation');

$contactsTenantContactInformation1->setName('String');

$contactsTenantContactInformation1->setTitle('String');

$contactsTenantContactInformation1->setEmail('String');

$contactsTenantContactInformation1->setPhone('String');

$contactsTenantContactInformation1->setNotes('String');


$contactsArray []= $contactsTenantContactInformation1;
$requestBody->setContacts($contactsArray);


$requestBody->setWebsite('String');



$result = $graphServiceClient->tenantRelationships()->managedTenants()->tenantsCustomizedInformation()->byTenantCustomizedInformationId('tenantCustomizedInformation-id')->patch($requestBody);


```