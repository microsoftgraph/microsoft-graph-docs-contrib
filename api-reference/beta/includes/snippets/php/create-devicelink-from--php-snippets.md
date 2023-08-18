---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
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


$result = $graphServiceClient->networkAccess()->connectivity()->branches()->byBranchSiteId('branchSite-id')->deviceLinks()->post($requestBody);


```