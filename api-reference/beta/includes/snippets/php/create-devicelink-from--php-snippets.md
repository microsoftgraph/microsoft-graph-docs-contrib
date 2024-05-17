---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\DeviceLink;
use Microsoft\Graph\Generated\Models\BgpConfiguration;
use Microsoft\Graph\Generated\Models\RedundancyConfiguration;
use Microsoft\Graph\Generated\Models\TunnelConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DeviceLink();
$requestBody->setName('device link 1');
$requestBody->setIpAddress('24.123.22.168');
$requestBody->setDeviceVendor(new DeviceVendor('intel'));
$requestBody->setBandwidthCapacityInMbps(new BandwidthCapacityInMbps('mbps250'));
$bgpConfiguration = new BgpConfiguration();
$bgpConfiguration->setLocalIpAddress('1.128.24.22');
$bgpConfiguration->setPeerIpAddress('1.128.24.28');
$bgpConfiguration->setAsn(4);
$requestBody->setBgpConfiguration($bgpConfiguration);
$redundancyConfiguration = new RedundancyConfiguration();
$redundancyConfiguration->setZoneLocalIpAddress('1.128.23.20');
$redundancyConfiguration->setRedundancyTier(new RedundancyTier('zoneRedundancy'));
$requestBody->setRedundancyConfiguration($redundancyConfiguration);
$tunnelConfiguration = new TunnelConfiguration();
$tunnelConfiguration->setOdataType('microsoft.graph.networkAccess.tunnelConfigurationIKEv2Default');
$tunnelConfiguration->setPreSharedKey('/microsoft/keyVault/placeholder');
$requestBody->setTunnelConfiguration($tunnelConfiguration);

$result = $graphServiceClient->networkAccess()->connectivity()->branches()->byBranchSiteId('branchSite-id')->deviceLinks()->post($requestBody)->wait();

```