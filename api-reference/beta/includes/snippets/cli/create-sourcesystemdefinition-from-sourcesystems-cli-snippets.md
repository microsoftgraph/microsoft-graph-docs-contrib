---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta external industry-data source-systems create --body '{\
  "displayName": "Rostering source",\
  "userMatchingSettings": [\
    {\
      "matchTarget": {\
        "code": "userPrincipalName"\
      },\
      "priorityOrder": 0,\
      "roleGroup@odata.bind": "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff",\
      "sourceIdentifier": {\
        "code": "username"\
      }\
    },\
    {\
      "matchTarget": {\
        "code": "userPrincipalName"\
      },\
      "priorityOrder": 1,\
      "roleGroup@odata.bind": "https://graph.microsoft.com/beta/external/industryData/roleGroups('students')",\
      "sourceIdentifier": {\
        "code": "username"\
      }\
    }\
  ]\
}\
'

```