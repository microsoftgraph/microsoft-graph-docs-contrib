---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta network-access connectivity remote-networks create --body '{\
    "name": "Bellevue branch w/ device link",\
    "region": "canadaEast",\
    "forwardingProfiles": [\
        {\
            "id": "1adaf535-1e31-4e14-983f-2270408162bf"\
        }\
    ],\
    "deviceLinks": [\
        {\
            "name": "CPE1",\
            "ipAddress": "52.13.21.25",\
            "bandwidthCapacityInMbps": "mbps500",\
            "deviceVendor": "barracudaNetworks",\
            "bgpConfiguration": {\
                "localIpAddress": "192.168.1.2",\
                "peerIpAddress": "10.1.1.2",\
                "asn": 65533\
            },\
            "redundancyConfiguration": {\
                "zoneLocalIpAddress": null,\
                "redundancyTier": "noRedundancy"\
            },\
            "tunnelConfiguration": {\
                "@odata.type": "#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Default",\
                "preSharedKey": "test123"\
            }\
        }\
    ]\
}\
'

```