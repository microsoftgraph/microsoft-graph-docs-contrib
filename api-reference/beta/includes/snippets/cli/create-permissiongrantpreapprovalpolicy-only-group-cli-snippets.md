---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta policies permission-grant-pre-approval-policies create --body '{\
    "conditions": [\
        {\
            "scopeType": "group",\
            "sensitivityLabels": {\
                "@odata.type": "#microsoft.graph.allScopeSensitivityLabels",\
                "labelKind": "all"\
            },\
            "permissions": {\
                "@odata.type": "#microsoft.graph.allPermissionsOnResourceApp",\
                "permissionKind": "allPermissionsOnResourceApp",\
                "permissionType": "application",\
                "resourceApplicationId": "00000003-0000-0000-c000-000000000000"\
            }\
        }\
    ]\
}\
'

```