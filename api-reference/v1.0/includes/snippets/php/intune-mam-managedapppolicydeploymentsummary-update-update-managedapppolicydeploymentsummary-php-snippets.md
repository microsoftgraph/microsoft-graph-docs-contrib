---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ManagedAppPolicyDeploymentSummary();
$requestBody->setOdataType('#microsoft.graph.managedAppPolicyDeploymentSummary');
$requestBody->setDisplayName('Display Name value');
$requestBody->setConfigurationDeployedUserCount(14);
$requestBody->setLastRefreshTime(new \DateTime('2017-01-01T00:01:30.1240368-08:00'));
$configurationDeploymentSummaryPerAppManagedAppPolicyDeploymentSummaryPerApp1 = new ManagedAppPolicyDeploymentSummaryPerApp();
$configurationDeploymentSummaryPerAppManagedAppPolicyDeploymentSummaryPerApp1->setOdataType('microsoft.graph.managedAppPolicyDeploymentSummaryPerApp');
$configurationDeploymentSummaryPerAppManagedAppPolicyDeploymentSummaryPerApp1MobileAppIdentifier = new AndroidMobileAppIdentifier();
$configurationDeploymentSummaryPerAppManagedAppPolicyDeploymentSummaryPerApp1MobileAppIdentifier->setOdataType('microsoft.graph.androidMobileAppIdentifier');
$configurationDeploymentSummaryPerAppManagedAppPolicyDeploymentSummaryPerApp1MobileAppIdentifier->setPackageId('Package Id value');
$configurationDeploymentSummaryPerAppManagedAppPolicyDeploymentSummaryPerApp1->setMobileAppIdentifier($configurationDeploymentSummaryPerAppManagedAppPolicyDeploymentSummaryPerApp1MobileAppIdentifier);
$configurationDeploymentSummaryPerAppManagedAppPolicyDeploymentSummaryPerApp1->setConfigurationAppliedUserCount(13);
$configurationDeploymentSummaryPerAppArray []= $configurationDeploymentSummaryPerAppManagedAppPolicyDeploymentSummaryPerApp1;
$requestBody->setConfigurationDeploymentSummaryPerApp($configurationDeploymentSummaryPerAppArray);

$requestBody->setVersion('Version value');

$result = $graphServiceClient->deviceAppManagement()->iosManagedAppProtections()->byIosManagedAppProtectionId('iosManagedAppProtection-id')->deploymentSummary()->patch($requestBody)->wait();

```