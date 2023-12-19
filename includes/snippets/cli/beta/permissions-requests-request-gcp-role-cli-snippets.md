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
      "@odata.type": "microsoft.graph.gcpRolePermissionsDefinitionAction",\
      "roles": [\
        {\
          "id": "roles/dialogflow.aamAdmin"\
        }\
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
  "justification": "I need to do this because I want to be an administrator",\
  "notes": "Pretty Pleaseeeee",\
  "scheduleInfo": {\
    "startDateTime": null,\
    "expiration": {\
      "duration": "PT1H"\
    },\
    "recurrence": null\
  },\
  "ticketInfo": {\
    "ticketNumber": "123456",\
    "ticketSystem": "ServiceNow",\
    "ticketSubmitterIdentityId": "alex@contoso.com",\
    "ticketApproverIdentityId": "alexmanager@contoso.com"\
  }\
}\
'

```