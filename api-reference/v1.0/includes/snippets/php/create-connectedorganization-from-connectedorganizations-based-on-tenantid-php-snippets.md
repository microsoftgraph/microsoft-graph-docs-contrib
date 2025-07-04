---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ConnectedOrganization;
use Microsoft\Graph\Beta\Generated\Models\IdentitySource;
use Microsoft\Graph\Beta\Generated\Models\AzureActiveDirectoryTenant;
use Microsoft\Graph\Beta\Generated\Models\ConnectedOrganizationState;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConnectedOrganization();
$requestBody->setDisplayName('Connected organization name');
$requestBody->setDescription('Connected organization description');
$identitySourcesIdentitySource1 = new AzureActiveDirectoryTenant();
$identitySourcesIdentitySource1->setOdataType('#microsoft.graph.azureActiveDirectoryTenant');
$identitySourcesIdentitySource1->setDisplayName('Contoso');
$identitySourcesIdentitySource1->setTenantId('aaaabbbb-0000-cccc-1111-dddd2222eeee');
$identitySourcesArray []= $identitySourcesIdentitySource1;
$requestBody->setIdentitySources($identitySourcesArray);

$requestBody->setState(new ConnectedOrganizationState('proposed'));

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->connectedOrganizations()->post($requestBody)->wait();

```