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
      "@odata.type": "microsoft.graph.azureRolePermissionsDefinitionAction",\
      "roles": [\
        {\
          "id": "cdda3590-29a3-44f6-95f2-9f980659eb04"\
        },\
        {\
          "id": "312a565d-c81f-4fd8-895a-4e21e48d571c"\
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
    "resourceId": "/subscriptions/87eefd90-95a3-480a-ba42-56ff299a05ee"\
  },\
  "justification": "I need to do this because I want to some new azure roles",\
  "notes": "Pretty Pleaseeeee",\
  "scheduleInfo": {\
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