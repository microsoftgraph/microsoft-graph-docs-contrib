---
title: "Permissions Management API quick reference for managing permissions requests"
description: "Quick reference guide for permissions requests API operations through Permissions Management APIs."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.topic: how-to
ms.prod: "multicloud-permissions-management"
ms.date: 11/22/2023
#CustomerIntent: As a developer, I want a one-stop shop for all the common tasks I can program through the permissions management APIs so that I don't have to visit all API docs one at a time.
---

# Permissions Management API quick reference for managing permissions requests

The permissions management APIs enable you to request, approve, reject, and cancel permissions requests. This article provides a quick reference guide for permissions requests API operations.

## Request an AWS policy
<!-- {
  "blockType": "request",
  "name": "permissions-on-demand-request-aws-policy"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/permissionsManagement/scheduledPermissionsRequests
Content-Type: application/json

{
  "requestedPermissions": {
    "@odata.type": "#microsoft.graph.awsPermissionsDefinition",
    "authorizationSystemInfo": {
      "authorizationSystemId": "956987887735",
      "authorizationSystemType": "AWS"
    },
    "actionInfo": {
      "@odata.type": "microsoft.graph.awsPolicyPermissionsDefinitionAction",
      "policies": [
        {
          "id": "arn:aws:iam::956987887735:policy/AddUserToGroup"
        }
      ],
      "assignToRoleId": "arn:aws:aim::956987887735:role/saml-user"
    },
    "identityInfo": {
      "externalId": "alex@contoso.com",
      "source": {
        "@odata.type": "microsoft.graph.samlIdentitySource"
      },
      "identityType": "user"
    }
  },
  "justification": "I need to do this because I want to add a user to a group",
  "notes": "Pretty Please",
  "scheduleInfo": {
    "expiration": {
      "duration": "PT1H"
    }
  },
  "ticketInfo": {
    "ticketNumber": "INC1234567",
    "ticketSystem": "ServiceNow",
    "ticketSubmitterIdentityId": "alex@contoso.com",
    "ticketApproverIdentityId": "alexmanager@contoso.com"
  }
}
```

## Request an AWS action
<!-- {
  "blockType": "request",
  "name": "permissions-on-demand-request-aws-action"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/permissionsManagement/scheduledPermissionsRequests
Content-Type: application/json

{
  "requestedPermissions": {
    "@odata.type": "microsoft.graph.awsPermissionsDefinition",
    "authorizationSystemInfo": {
      "authorizationSystemId": "956987887735",
      "authorizationSystemType": "AWS"
    },
    "actionInfo": {
      "@odata.type": "microsoft.graph.awsActionsPermissionsDefinitionAction",
      "statements": [
        {
          "statementId": "test1",
          "actions": ["s3:AbortMultipartUpload", "s3:CreateBucket"],
          "notActions": [],
          "resources": ["*"],
          "notResources": [],
          "effect": "allow",
          "condition": {
            "NumericLessThanEquals": { "aws:MultiFactorAuthAge": "3600" }
          }
        },
        {
          "statementId": "test2",
          "actions": ["s3:Delete:*"],
          "notActions": [],
          "resources": ["*"],
          "notResources": [],
          "effect": "allow",
          "condition": {
            "NumericLessThanEquals": { "aws:MultiFactorAuthAge": "3600" }
          }
        }
      ],
      "assignToRoleId": "arn:aws:iam::956987887735:role/ck-saml-power-user"
    },
    "identityInfo": {
      "externalId": "rsn:alex@contoso.com",
      "source": {
        "@odata.type": "microsoft.graph.samlIdentitySource"
      },
      "identityType": "user"
    }
  },
  "justification": "I need to do this because I want to access S3 resources",
  "notes": "Please",
  "scheduleInfo": {
    "startDateTime": "2023-02-08T12:15:00Z",
    "expiration": {
      "duration": "PT1H"
    },
    "recurrence": {
      "pattern": {
        "dayOfMonth": 5,
        "daysOfWeek": [],
        "interval": 1,
        "reccurencePatternType": "absoluteMonthly"
      },
      "range": {
        "startDate": "2023-02-08",
        "reccurenceRangeType": "noEnd"
      }
    }
  },
  "ticketInfo": {
    "ticketNumber": "INC1234567",
    "ticketSystem": "ServiceNow",
    "ticketSubmitterIdentityId": "alex@contoso.com",
    "ticketApproverIdentityId": "alexmanager@contoso.com"
  }
}
```

## Request an Azure action
<!-- {
  "blockType": "request",
  "name": "permissions-on-demand-request-azure-action"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/permissionsManagement/scheduledPermissionsRequests
Content-Type: application/json

{
  "requestedPermissions": {
    "@odata.type": "microsoft.graph.singleResourceAzurePermissionsDefinition",
    "authorizationSystemInfo": {
      "authorizationSystemId": "87eefd90-95a3-480a-ba42-56ff299a05ee",
      "authorizationSystemType": "AZURE"
    },
    "actionInfo": {
      "@odata.type": "microsoft.graph.azureActionPermissionsDefinitionAction",
      "actions": ["Microsoft.Authorization/roleassignments/read", "Microsoft.Authorization/roleassignments/write"]
    },
    "identityInfo": {
      "externalId": "alex@adatum.com"",
      "source": {
        "@odata.type": "microsoft.graph.edIdentitySource"
      },
      "identityType": "user"
    },
    "resourceId": "/subscriptions/87eefd90-95a3-480a-ba42-56ff299a05ee"
  },
  "justification": "I need to do this because I want to access AAD resources",
  "notes": "Pretty Pleaseeeee",
  "scheduleInfo": {
    "startDateTime": null,
    "expiration": {
      "duration": "PT1H"
    },
    "recurrence": null
  },
  "ticketInfo": {
    "ticketNumber": "INC1234567",
    "ticketSystem": "ServiceNow",
    "ticketSubmitterIdentityId": "alex@contoso.com",
    "ticketApproverIdentityId": "alexmanager@contoso.com"
  }
}
```

## Request an Azure role
<!-- {
  "blockType": "request",
  "name": "permissions-on-demand-request-azure-role"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/permissionsManagement/scheduledPermissionsRequests
Content-Type: application/json

{
  "requestedPermissions": {
    "@odata.type": "microsoft.graph.singleResourceAzurePermissionsDefinition",
    "authorizationSystemInfo": {
      "authorizationSystemId": "87eefd90-95a3-480a-ba42-56ff299a05ee",
      "authorizationSystemType": "AZURE"
    },
    "actionInfo": {
      "@odata.type": "microsoft.graph.azureRolePermissionsDefinitionAction",
      "roles": [
        {
          "id": "cdda3590-29a3-44f6-95f2-9f980659eb04"
        },
        {
          "id": "312a565d-c81f-4fd8-895a-4e21e48d571c"
        }
      ]
    },
    "identityInfo": {
      "externalId": "alex@contoso.com",
      "source": {
        "@odata.type": "microsoft.graph.edIdentitySource"
      },
      "identityType": "user"
    },
    "resourceId": "/subscriptions/87eefd90-95a3-480a-ba42-56ff299a05ee"
  },
  "justification": "I need to do this because I want to some new azure roles",
  "notes": "Pretty Pleaseeeee",
  "scheduleInfo": {
    "expiration": {
      "duration": "PT1H"
    },
    "recurrence": null
  },
  "ticketInfo": {
    "ticketNumber": "INC1234567",
    "ticketSystem": "ServiceNow",
    "ticketSubmitterIdentityId": "alex@contoso.com",
    "ticketApproverIdentityId": "alexmanager@contoso.com"
  }
}
```

## Request a GCP action
<!-- {
  "blockType": "request",
  "name": "permissions-on-demand-request-gcp-action"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/permissionsManagement/scheduledPermissionsRequests
Content-Type: application/json

{
  "requestedPermissions": {
    "@odata.type": "microsoft.graph.singleResourceGcpPermissionsDefinition",
    "authorizationSystemInfo": {
      "authorizationSystemId": "carbide-bonsai-205017",
      "authorizationSystemType": "GCP"
    },
    "actionInfo": {
      "@odata.type": "microsoft.graph.gcpActionPermissionsDefinitionAction",
      "actions": [
        "aiplatform:dataitems"
      ]
    },
    "identityInfo": {
      "externalId": "alex@contoso.com",
      "source": {
        "@odata.type": "microsoft.graph.edIdentitySource"
      },
      "identityType": "user"
    },
    "resourceId": "carbide-bonsai-205017"
  },
  "justification": "I need to do this because I want to code my own chat GPT-3 bot on GCP",
  "notes": "Pretty Pleaseeeee",
  "scheduleInfo": {
    "expiration": {
      "duration": "PT1H"
    }
  },
  "ticketInfo": {
    "ticketNumber": "INC1234567",
    "ticketSystem": "ServiceNow",
    "ticketSubmitterIdentityId": "alex@contoso.com",
    "ticketApproverIdentityId": "alexmanager@contoso.com"
  }
}
```

## Request a GCP role
<!-- {
  "blockType": "request",
  "name": "permissions-on-demand-request-gcp-role"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/permissionsManagement/scheduledPermissionsRequests
Content-Type: application/json

{
  "requestedPermissions": {
    "@odata.type": "microsoft.graph.singleResourceGcpPermissionsDefinition",
    "authorizationSystemInfo": {
      "authorizationSystemId": "carbide-bonsai-205017",
      "authorizationSystemType": "GCP"
    },
    "actionInfo": {
      "@odata.type": "microsoft.graph.gcpRolePermissionsDefinitionAction",
      "roles": [
        {
          "id": "roles/dialogflow.aamAdmin"
        }
      ]
    },
    "identityInfo": {
      "externalId": "alex@contoso.com",
      "source": {
        "@odata.type": "microsoft.graph.edIdentitySource"
      },
      "identityType": "user"
    },
    "resourceId": "carbide-bonsai-205017"
  },
  "justification": "I need to do this because I want to be an administrator",
  "notes": "Pretty Pleaseeeee",
  "scheduleInfo": {
    "startDateTime": null,
    "expiration": {
      "duration": "PT1H"
    },
    "recurrence": null
  },
  "ticketInfo": {
    "ticketNumber": "123456",
    "ticketSystem": "ServiceNow",
    "ticketSubmitterIdentityId": "alex@contoso.com",
    "ticketApproverIdentityId": "alexmanager@contoso.com"
  }
}
```

## Cancel a permissions request by ID

Either the requestor or an administrator can cancel an approved request, while only the requestor can cancel a pending (**statusDetail** of `submitted`) request.

<!-- {
  "blockType": "request",
  "name": "permissions-on-demand-cancel-request"
}-->
```http
POST https://graph.microsoft.com/beta/permissionsManagement/scheduledPermissionsRequests/{id}/cancelAll
```

## List details of all permission requests
<!-- {
  "blockType": "request",
  "name": "permissions-on-demand-list-requests"
}-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsManagement/permissionsRequestChanges
```

## List details of all permission requests filtered by the date they were modified
<!-- {
  "blockType": "request",
  "name": "permissions-on-demand-list-requests-filter-modificationdatetime"
}-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsManagement/permissionsRequestChanges?$filter=modificationDateTime gt {t}
```

## Get details of a permissions request
<!-- {
  "blockType": "request",
  "name": "permissions-on-demand-get-request"
}-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsManagement/permissionsRequestChanges/{id}
```

## See also

+ [Discover, remediate, and monitor permissions in multicloud infrastructures using permissions management APIs (preview)](/graph/api/resources/permissions-management-api-overview?view=graph-rest-beta&preserve-view=true)
+ [Manage roles, policies, and permissions requests](/entra/permissions-management/product-roles-permissions)