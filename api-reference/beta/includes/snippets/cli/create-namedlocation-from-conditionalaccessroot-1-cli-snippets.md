---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity conditional-access named-locations create --body '{\
    "@odata.type": "#microsoft.graph.ipNamedLocation",\
    "displayName": "Untrusted IP named location",\
    "isTrusted": false,\
    "ipRanges": [\
        {\
            "@odata.type": "#microsoft.graph.iPv4CidrRange",\
            "cidrAddress": "12.34.221.11/22"\
        },\
        {\
            "@odata.type": "#microsoft.graph.iPv6CidrRange",\
            "cidrAddress": "2001:0:9d38:90d6:0:0:0:0/63"\
        }\
    ]\
}\
'

```