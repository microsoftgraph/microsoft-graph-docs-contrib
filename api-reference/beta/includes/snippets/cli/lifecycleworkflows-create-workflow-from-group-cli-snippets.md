---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity-governance lifecycle-workflows workflows create --body '{\
    "category": "leaver",\
    "description": "Configure offboarding tasks for employees on their last day of work",\
    "displayName": "Offboard an employee",\
    "isEnabled": true,\
    "isSchedulingEnabled": true,\
    "executionConditions": {\
        "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",\
        "scope": {\
            "@odata.type": "#microsoft.graph.identityGovernance.groupBasedSubjectSet",\
            "groups": [\
                {\
                    "id": "668e7540-7f8e-4ca4-a207-b7dffbb6d038"\
                }\
            ]\
        },\
        "trigger": {\
            "@odata.type": "#microsoft.graph.identityGovernance.membershipChangeTrigger",\
            "changeType": "remove"\
        }\
    },\
    "tasks": [\
        {\
            "category": "leaver",\
            "continueOnError": false,\
            "description": "Remove user from all Teams memberships",\
            "displayName": "Remove user from all Teams",\
            "isEnabled": true,\
            "taskDefinitionId": "81f7b200-2816-4b3b-8c5d-dc556f07b024",\
            "arguments": []\
        },\
        {\
            "category": "leaver",\
            "continueOnError": false,\
            "description": "Remove user from all Azure AD groups memberships",\
            "displayName": "Remove user from all groups",\
            "isEnabled": true,\
            "taskDefinitionId": "b3a31406-2a15-4c9a-b25b-a658fa5f07fc",\
            "arguments": []\
        }\
    ]\
}\
'

```