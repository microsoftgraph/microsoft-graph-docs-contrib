---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const branchSite = {
    name: 'branch 1',
    region: 'eastUS',
    deviceLinks: 
    [
        {
            name: 'device link 1',
            ipAddress: '24.123.22.168',
            deviceVendor: 'intel',
            bandwidthCapacityInMbps: 'mbps250',
            bgpConfiguration: 
            {
                localIpAddress: '1.128.24.22',
                peerIpAddress: '1.128.24.28',
                asn: 4,
            },
            redundancyConfiguration: 
            {
                zoneLocalIpAddress: '1.128.23.20',
                redundancyTier: 'zoneRedundancy',
            },
            tunnelConfiguration: 
            {
                '@odata.type': 'microsoft.graph.networkAccess.tunnelConfigurationIKEv2Default',
                preSharedKey: '/path/to/kv'
            }
        }
    ],
    forwardingProfiles: [
        {
            id: '8e30d8d6-3588-4d5f-a704-6bd843be5b8f'
        }
    ]
};

await client.api('/networkAccess/connectivity/branches/{branchSiteId}/')
	.version('beta')
	.post(branchSite);

```