---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc identity-governance entitlement-management assignment-policies create --body '{\
    "displayName": "customExtensionStageSettings policy",\
    "description": "policy with specified stages for custom extension assignment",\
    "allowedTargetScope": "notSpecified",\
    "specificAllowedTargets": [],\
    "expiration": {\
        "endDateTime": null,\
        "duration": null,\
        "type": "noExpiration"\
    },\
    "requestorSettings": {\
        "enableTargetsToSelfAddAccess": false,\
        "enableTargetsToSelfUpdateAccess": false,\
        "enableTargetsToSelfRemoveAccess": false,\
        "allowCustomAssignmentSchedule": true,\
        "enableOnBehalfRequestorsToAddAccess": false,\
        "enableOnBehalfRequestorsToUpdateAccess": false,\
        "enableOnBehalfRequestorsToRemoveAccess": false,\
        "onBehalfRequestors": []\
    },\
    "requestApprovalSettings": {\
        "isApprovalRequiredForAdd": false,\
        "isApprovalRequiredForUpdate": false,\
        "stages": []\
    },\
    "accessPackage": {\
        "id": "5ad1eb64-15f7-4614-b419-05d11ee266bf"\
    },\
    "customExtensionStageSettings": [\
        {\
            "stage": "assignmentRequestCreated",\
            "customExtension": {\
                "@odata.type": "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",\
                "id": "bebe7873-1f0d-4db9-b6c3-01f7ebfe8476"\
            }\
        }\
    ]\
}\
'

```