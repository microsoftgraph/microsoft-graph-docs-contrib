---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity conditional-access named-locations patch --named-location-id {namedLocation-id} --body '{\
    "@odata.type": "#microsoft.graph.ipNamedLocation",\
    "displayName": "Untrusted named location with only IPv4 address",\
    "isTrusted": false,\
    "ipRanges": [\
        {\
            "@odata.type": "#microsoft.graph.iPv4CidrRange",\
            "cidrAddress": "6.5.4.3/18"\
        }\
\
    ]\
}\
'

```