---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta solutions business-scenarios planner task-configuration patch --business-scenario-id {businessScenario-id} --body '{\
  "@odata.type": "#microsoft.graph.plannerTaskConfiguration",\
  "editPolicy": {\
    "rules": [\
      {\
        "defaultRule": "block",\
        "role": {\
          "@odata.type": "#microsoft.graph.plannerRelationshipBasedUserType",\
          "roleKind": "relationship",\
          "role": "defaultRules"\
        },\
        "propertyRule": {\
          "percentComplete": ["allow"],\
          "ruleKind": "taskRule",\
          "assignments": {\
            "defaultRules": ["addSelf"],\
            "overrides": []\
          }\
        }\
      },\
      {\
        "defaultRule": "block",\
        "role": {\
          "@odata.type": "#microsoft.graph.plannerRelationshipBasedUserType",\
          "roleKind": "relationship",\
          "role": "taskAssignees"\
        },\
        "propertyRule": {\
          "startDate": ["allow"],\
          "dueDate": ["allow"],\
          "percentComplete": ["allow"],\
          "order": ["allow"],\
          "ruleKind": "taskRule",\
          "references": {\
            "defaultRules": ["allow"],\
            "overrides": [\
              {\
                "name": "userCreated",\
                "rules": ["allow"]\
              },\
              {\
                "name": "applicationCreated",\
                "rules": ["block"]\
              }\
            ]\
          },\
          "checkLists": {\
            "defaultRules": ["allow"],\
            "overrides": [\
              {\
                "name": "userCreated",\
                "rules": ["allow"]\
              },\
              {\
                "name": "applicationCreated",\
                "rules": ["check"]\
              }\
            ]\
          },\
          "assignments": {\
            "defaultRules": ["block"],\
            "overrides": [\
              {\
                "name": "userCreated",\
                "rules": ["removeSelf"]\
              },\
              {\
                "name": "applicationCreated",\
                "rules": ["check"]\
              }\
            ]\
          },\
          "appliedCategories": {\
            "defaultRules": [\
              "allow"\
            ],\
            "overrides": []\
          }\
        }\
      }\
    ]\
  }\
}\
'

```