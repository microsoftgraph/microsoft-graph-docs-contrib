---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\RemoteNetwork;
use Microsoft\Graph\Generated\Models\ForwardingProfile;
use Microsoft\Graph\Generated\Models\DeviceLink;
use Microsoft\Graph\Generated\Models\BgpConfiguration;
use Microsoft\Graph\Generated\Models\RedundancyConfiguration;
use Microsoft\Graph\Generated\Models\TunnelConfigurationIKEv2Default;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RemoteNetwork();
$requestBody->setName('Bellevue branch w/ device link');
$requestBody->setRegion(new Region('canadaEast'));
$forwardingProfilesForwardingProfile1 = new ForwardingProfile();
$forwardingProfilesForwardingProfile1->setId('1adaf535-1e31-4e14-983f-2270408162bf');
$forwardingProfilesArray []= $forwardingProfilesForwardingProfile1;
$requestBody->setForwardingProfiles($forwardingProfilesArray);

$deviceLinksDeviceLink1 = new DeviceLink();
$deviceLinksDeviceLink1->setName('CPE1');
$deviceLinksDeviceLink1->setIpAddress('52.13.21.25');
$deviceLinksDeviceLink1->setBandwidthCapacityInMbps(new BandwidthCapacityInMbps('mbps500'));
$deviceLinksDeviceLink1->setDeviceVendor(new DeviceVendor('barracudaNetworks'));
$deviceLinksDeviceLink1BgpConfiguration = new BgpConfiguration();
$deviceLinksDeviceLink1BgpConfiguration->setLocalIpAddress('192.168.1.2');
$deviceLinksDeviceLink1BgpConfiguration->setPeerIpAddress('10.1.1.2');
$deviceLinksDeviceLink1BgpConfiguration->setAsn(65533);
$deviceLinksDeviceLink1->setBgpConfiguration($deviceLinksDeviceLink1BgpConfiguration);
$deviceLinksDeviceLink1RedundancyConfiguration = new RedundancyConfiguration();
$deviceLinksDeviceLink1RedundancyConfiguration->setZoneLocalIpAddress(null);
$deviceLinksDeviceLink1RedundancyConfiguration->setRedundancyTier(new RedundancyTier('noRedundancy'));
$deviceLinksDeviceLink1->setRedundancyConfiguration($deviceLinksDeviceLink1RedundancyConfiguration);
$deviceLinksDeviceLink1TunnelConfiguration = new TunnelConfigurationIKEv2Default();
$deviceLinksDeviceLink1TunnelConfiguration->setOdataType('#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Default');
$deviceLinksDeviceLink1TunnelConfiguration->setPreSharedKey('test123');
$deviceLinksDeviceLink1->setTunnelConfiguration($deviceLinksDeviceLink1TunnelConfiguration);
$deviceLinksArray []= $deviceLinksDeviceLink1;
$requestBody->setDeviceLinks($deviceLinksArray);


$result = $graphServiceClient->networkAccess()->connectivity()->remoteNetworks()->post($requestBody)->wait();

```