---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta external industry-data outbound-provisioning-flow-sets provisioning-flows patch --outbound-provisioning-flow-set-id {outboundProvisioningFlowSet-id} --provisioning-flow-id {provisioningFlow-id} --body '{\
    "@odata.type": "#microsoft.graph.industryData.classGroupProvisioningFlow",\
    "configuration": {\
        "@odata.type": "#microsoft.graph.industryData.classGroupConfiguration",\
        "additionalAttributes": [\
            "courseTitle",\
            "courseCode"\
        ],\
        "additionalOptions": {\
            "@odata.type": "#microsoft.graph.industryData.additionalClassGroupOptions",\
            "createTeam": false,\
            "writeDisplayNameOnCreateOnly": false\
        },\
        "enrollmentMappings": {\
            "@odata.type": "#microsoft.graph.industryData.enrollmentMappings",\
            "memberEnrollmentMappings": [\
                {\
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",\
                    "code": "substitute"\
                }\
            ],\
            "ownerEnrollmentMappings": [\
                {\
                    "@odata.type": "#microsoft.graph.industryData.sectionRoleReferenceValue",\
                    "code": "teacher"\
                }\
            ]\
        }\
    }\
}\
'

```