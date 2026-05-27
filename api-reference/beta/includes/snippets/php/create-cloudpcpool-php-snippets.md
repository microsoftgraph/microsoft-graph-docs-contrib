---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CloudPcAgentPool;
use Microsoft\Graph\Beta\Generated\Models\CloudPcConfiguration;
use Microsoft\Graph\Beta\Generated\Models\CloudPcProvisioningPolicyImageType;
use Microsoft\Graph\Beta\Generated\Models\CloudPcMicrosoftHostedNetworkConfiguration;
use Microsoft\Graph\Beta\Generated\Models\CloudPcGeographicLocationType;
use Microsoft\Graph\Beta\Generated\Models\CloudPcRegionGroupConfiguration;
use Microsoft\Graph\Beta\Generated\Models\CloudPcRegionGroup;
use Microsoft\Graph\Beta\Generated\Models\CloudPcAgentPoolBillingConfiguration;
use Microsoft\Graph\Beta\Generated\Models\CloudPcAgentPoolBillingType;
use Microsoft\Graph\Beta\Generated\Models\CloudPcAgentPoolScalingPolicy;
use Microsoft\Graph\Beta\Generated\Models\CloudPcAgentPoolCapabilityConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcAgentPool();
$requestBody->setOdataType('#microsoft.graph.cloudPcAgentPool');
$requestBody->setDisplayName('Contoso Development Pool');
$cloudPcConfiguration = new CloudPcConfiguration();
$cloudPcConfiguration->setImageId('microsoftwindowsdesktop_windows-ent-cpc_win11-23h2-ent-cpc-m365');
$cloudPcConfiguration->setImageType(new CloudPcProvisioningPolicyImageType('gallery'));
$cloudPcConfiguration->setOsLocale('en-US');
$requestBody->setCloudPcConfiguration($cloudPcConfiguration);
$networkConfiguration = new CloudPcMicrosoftHostedNetworkConfiguration();
$networkConfiguration->setOdataType('#microsoft.graph.cloudPcMicrosoftHostedNetworkConfiguration');
$networkConfiguration->setGeographicLocationType(new CloudPcGeographicLocationType('usWest'));
$regionGroupsCloudPcRegionGroupConfiguration1 = new CloudPcRegionGroupConfiguration();
$regionGroupsCloudPcRegionGroupConfiguration1->setRegionGroup(new CloudPcRegionGroup('usWest'));
$regionGroupsCloudPcRegionGroupConfiguration1->setRegions(['westus2', 'westus3', 	]);
$regionGroupsArray []= $regionGroupsCloudPcRegionGroupConfiguration1;
$networkConfiguration->setRegionGroups($regionGroupsArray);

$requestBody->setNetworkConfiguration($networkConfiguration);
$billingConfiguration = new CloudPcAgentPoolBillingConfiguration();
$billingConfiguration->setBillingType(new CloudPcAgentPoolBillingType('payAsYouGo'));
$billingConfiguration->setBillingPlanId('00000000-0000-0000-0000-000000000001');
$requestBody->setBillingConfiguration($billingConfiguration);
$scalingPolicy = new CloudPcAgentPoolScalingPolicy();
$scalingPolicy->setMinimumCount(2);
$scalingPolicy->setMaximumCount(10);
$requestBody->setScalingPolicy($scalingPolicy);
$capabilities = new CloudPcAgentPoolCapabilityConfiguration();
$capabilities->setOdataType('#microsoft.graph.cloudPcAgentPoolCapabilityConfiguration');
$capabilities->setEnableSingleSignOn(true);
$requestBody->setCapabilities($capabilities);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->cloudPcPools()->post($requestBody)->wait();

```