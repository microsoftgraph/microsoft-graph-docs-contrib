---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta external industry-data outbound-provisioning-flow-sets create --body '{\
    "@odata.type": "#microsoft.graph.industryData.outboundProvisioningFlowSet",\
    "displayName": "Outbound Provisioning Flow Test",\
    "filter": {\
        "@odata.type": "#microsoft.graph.industryData.basicFilter",\
        "attribute": "orgExternalId",\
        "in": [\
            "Quarter",\
            "Demo"\
        ]\
    }\
}\
'

```