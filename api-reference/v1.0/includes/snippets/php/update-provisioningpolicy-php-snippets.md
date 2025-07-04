---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CloudPcProvisioningPolicy;
use Microsoft\Graph\Generated\Models\MicrosoftManagedDesktop;
use Microsoft\Graph\Generated\Models\MicrosoftManagedDesktopType;
use Microsoft\Graph\Generated\Models\CloudPcProvisioningPolicyAutopatch;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcProvisioningPolicy();
$requestBody->setOdataType('#microsoft.graph.cloudPcProvisioningPolicy');
$requestBody->setDisplayName('HR provisioning policy');
$requestBody->setDescription('Provisioning policy for India HR employees');
$microsoftManagedDesktop = new MicrosoftManagedDesktop();
$microsoftManagedDesktop->setManagedType(new MicrosoftManagedDesktopType('starterManaged'));
$microsoftManagedDesktop->setProfile(null);
$requestBody->setMicrosoftManagedDesktop($microsoftManagedDesktop);
$autopatch = new CloudPcProvisioningPolicyAutopatch();
$autopatch->setAutopatchGroupId('91197a0b-3a74-408d-ba88-bce3fdc4e5eb');
$requestBody->setAutopatch($autopatch);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->provisioningPolicies()->byCloudPcProvisioningPolicyId('cloudPcProvisioningPolicy-id')->patch($requestBody)->wait();

```