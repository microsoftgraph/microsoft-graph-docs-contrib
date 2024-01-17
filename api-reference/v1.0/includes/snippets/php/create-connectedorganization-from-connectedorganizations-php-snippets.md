---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConnectedOrganization();
$requestBody->setDisplayName('Connected organization name');
$requestBody->setDescription('Connected organization description');
$identitySourcesIdentitySource1 = new DomainIdentitySource();
$identitySourcesIdentitySource1->setOdataType('#microsoft.graph.domainIdentitySource');
$identitySourcesIdentitySource1->setDomainName('example.com');
$identitySourcesIdentitySource1->setDisplayName('example.com');
$identitySourcesArray []= $identitySourcesIdentitySource1;
$requestBody->setIdentitySources($identitySourcesArray);

$requestBody->setState(new ConnectedOrganizationState('proposed'));

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->connectedOrganizations()->post($requestBody)->wait();

```