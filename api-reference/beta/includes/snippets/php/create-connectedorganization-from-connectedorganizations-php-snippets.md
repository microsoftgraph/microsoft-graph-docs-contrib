---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ConnectedOrganization();
$requestBody->setDisplayName('Connected organization name');

$requestBody->setDescription('Connected organization description');

$identitySourcesIdentitySource1 = new IdentitySource();
$identitySourcesIdentitySource1->set@odatatype('#microsoft.graph.domainIdentitySource');

$additionalData = [
		'domainName' => 'example.com', 
		'displayName' => 'example.com', 
];
$identitySourcesIdentitySource1->setAdditionalData($additionalData);



$identitySourcesArray []= $identitySourcesIdentitySource1;
$requestBody->setIdentitySources($identitySourcesArray);


$requestBody->setState(new ConnectedOrganizationState('proposed'));



$result = $graphServiceClient->identityGovernance()->entitlementManagement()->connectedOrganizations()->post($requestBody);


```