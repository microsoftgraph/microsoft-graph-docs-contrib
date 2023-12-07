---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity-governance permissions-management scheduled-permissions-requests post --body '{\
  "requestedPermissions": {\
    "@odata.type": "microsoft.graph.singleResourceGcpPermissionsDefinition",\
    "authorizationSystemInfo": {\
      "authorizationSystemId": "carbide-bonsai-205017",\
      "authorizationSystemType": "GCP"\
    },\
    "actionInfo": {\
      "@odata.type": "microsoft.graph.gcpActionPermissionsDefinitionAction",\
      "actions": [\
        "aiplatform:dataitems"\
      ]\
    },\
    "identityInfo": {\
      "externalId": "alex@contoso.com",\
      "source": {\
        "@odata.type": "microsoft.graph.edIdentitySource"\
      },\
      "identityType": "user"\
    },\
    "resourceId": "carbide-bonsai-205017"\
  },\
  "justification": "I need to do this because I want to code my own chat GPT-3 bot on GCP",\
  "notes": "Pretty Pleaseeeee",\
  "scheduleInfo": {\
    "expiration": {\
      "duration": "PT1H"\
    }\
  },\
  "ticketInfo": {\
    "ticketNumber": "INC1234567",\
    "ticketSystem": "ServiceNow",\
    "ticketSubmitterIdentityId": "alex@contoso.com",\
    "ticketApproverIdentityId": "alexmanager@contoso.com"\
  }\
}\
'

```