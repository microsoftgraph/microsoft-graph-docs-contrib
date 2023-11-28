---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta network-access connectivity branches device-links create --branch-site-id {branchSite-id} --body '{\
    "name": "device link 1",\
    "ipAddress": "24.123.22.168",\
    "deviceVendor": "intel",\
    "bandwidthCapacityInMbps": "mbps250",\
    "bgpConfiguration":\
    {\
        "localIpAddress": "1.128.24.22",\
        "peerIpAddress": "1.128.24.28",\
        "asn": 4\
    },\
    "redundancyConfiguration":\
    {\
        "zoneLocalIpAddress": "1.128.23.20",\
        "redundancyTier": "zoneRedundancy"\
    },\
    "tunnelConfiguration":\
    {\
        "@odata.type": "microsoft.graph.networkAccess.tunnelConfigurationIKEv2Default",\
        "preSharedKey": "/microsoft/keyVault/placeholder"\
    }\
}\
'

```