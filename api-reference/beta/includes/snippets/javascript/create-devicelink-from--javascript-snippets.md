---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceLink = {
    name: 'device link 1',
    ipAddress: '24.123.22.168',
    deviceVendor: 'intel',
    bandwidthCapacityInMbps: 'mbps250',
    bgpConfiguration: 
    {
        localIpAddress: '1.128.24.22',
        peerIpAddress: '1.128.24.28',
        asn: 4
    },
    redundancyConfiguration: 
    {
        zoneLocalIpAddress: '1.128.23.20',
        redundancyTier: 'zoneRedundancy'
    },
    tunnelConfiguration: 
    {
        '@odata.type': 'microsoft.graph.networkAccess.tunnelConfigurationIKEv2Default',
        preSharedKey: '/microsoft/keyVault/placeholder'
    }
};

await client.api('/networkAccess/connectivity/branches/19a92090-c14e-4cea-a933-27d38f72c4d1/deviceLinks')
	.version('beta')
	.post(deviceLink);

```