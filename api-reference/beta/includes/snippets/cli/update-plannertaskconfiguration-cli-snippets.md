---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta solutions business-scenarios planner task-configuration patch --business-scenario-id {businessScenario-id} --body '{\
    "editPolicy": {\
        "rules": [\
            {\
                "userType": {\
                    "@odata.type": "#microsoft.graph.plannerRelationshipBasedUserType",\
                    "selectionKind": "relationship",\
                    "role": "defaultRules"\
                },\
                "defaultRule": "block",\
                "propertyRule": {\
                    "ruleKind": "taskRule",\
                    "references": {\
                        "defaultRules": [ "allow" ],\
                        "overrides": []\
                    },\
                    "checkLists": {\
                        "defaultRules": [ "allow" ],\
                        "overrides": []\
                    },\
                    "assignments": {\
                        "defaultRules": [ "allow" ],\
                        "overrides": [\
                            {\
                                "name": "userCreated",\
                                "rules": [ "allow" ]\
                            },\
                            {\
                                "name": "applicationCreated",\
                                "rules": [ "allow" ]\
                            }\
                        ]\
                    },\
                    "appliedCategories": {\
                        "defaultRules": [ "allow" ],\
                        "overrides": []\
                    }\
                }\
            }\
        ]\
    }\
}\
'

```