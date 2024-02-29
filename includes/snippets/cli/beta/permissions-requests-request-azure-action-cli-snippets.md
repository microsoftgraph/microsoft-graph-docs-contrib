---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity-governance permissions-management scheduled-permissions-requests post --body '{\
  "requestedPermissions": {\
    "@odata.type": "microsoft.graph.singleResourceAzurePermissionsDefinition",\
    "authorizationSystemInfo": {\
      "authorizationSystemId": "87eefd90-95a3-480a-ba42-56ff299a05ee",\
      "authorizationSystemType": "AZURE"\
    },\
    "actionInfo": {\
      "@odata.type": "microsoft.graph.azureActionPermissionsDefinitionAction",\
      "actions": ["Microsoft.Authorization/roleassignments/read", "Microsoft.Authorization/roleassignments/write"]\
    },\
    "identityInfo": {\
      "externalId": "alex@adatum.com"",\
      "source": {\
        "@odata.type": "microsoft.graph.edIdentitySource"\
      },\
      "identityType": "user"\
    },\
    "resourceId": "/subscriptions/87eefd90-95a3-480a-ba42-56ff299a05ee"\
  },\
  "justification": "I need to do this because I want to access AAD resources",\
  "notes": "Pretty Pleaseeeee",\
  "scheduleInfo": {\
    "startDateTime": null,\
    "expiration": {\
      "duration": "PT1H"\
    },\
    "recurrence": null\
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