---
title: "Permissions Management API operations quick reference for AWS authorization systems"
description: "API operations quick reference guide for AWS authorization systems."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.topic: how-to
ms.prod: "multicloud-permissions-management"
ms.date: 11/22/2023
#CustomerIntent: As a developer, I want a one-stop shop for all the common tasks I can program through the permissions management APIs so that I don't have to visit all API docs one at a time.
---

# Permissions Management API operations quick reference for AWS authorization systems

The permissions management APIs enable you to discover permissions assigned to all identities across multiple clouds; request permissions; approve, reject, and cancel permissions requests. This article provides a quick reference guide for API operations on AWS authorization systems, supported through the permissions management APIs.

## Get all authorization systems

List all authorization systems onboarded to Permissions Management.

```http
GET https://graph.microsoft.com/beta/external/authorizationSystems
```

Filter authorization systems by name.
 
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems?$filter=contains(authorizationSystemName, 'cloud')
```

## Get an authorization system

```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}
```

## List AWS authorization systems

List AWS authorization systems onboarded to Permissions Management by filtering by the **authorizationSystemType** property.

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-via-filter"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems?$filter=authorizationSystemType eq 'aws'
```

List AWS authorization systems onboarded to Permissions Management.

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/microsoft.graph.awsAuthorizationSystem
```

Identify all AWS authorization systems that are online and have permissions modification capability enabled.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-permissionsmodificationcapability-entitlementsdatacollectionstatus"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems?$filter=authorizationSystemType eq 'aws' and dataCollectionInfo/entitlements/microsoft.graph.entitlementsDataCollection/permissionsModificationCapability eq 'enabled' and dataCollectionInfo/entitlements/microsoft.graph.entitlementsDataCollection/status eq 'online'
```

## Get identities in an AWS authorization system

### List all identities
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-identities-all"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/all
```

### Get one identity

By primary key ID.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-identities-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/all/{id}
```

By alternate key externalId.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-identities-by-externalid"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/all(externalId='{externalId}')
```

## Get AWS roles

### List all AWS roles

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-identities-roles"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/roles
```

### Get one AWS role

By primary key role ID.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-identities-roles-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/roles/{id}
```

By alternate key externalId.

<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-identities-roles-by-externalid"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/roles(externalId='{externalId}')
```

## Get AWS users

### List all AWS users

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-identities-users"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/users
```

### Get one AWS user

By primary key user ID.

<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-identities-users-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/users/{id}
```

By alternate key externalId.

<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-identities-users-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/users(externalId='{externalId}')
```

### List assumable roles for an AWS user

<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-identities-users-assumableroles"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/users/{id}/assumableRoles
```

## Get actions

### List all actions

List all actions.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-actions"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions
```

List actions for a specific service in an AWS authorization system.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-actions-filter-service"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions?$filter=service/id eq 'ec2'
```

List high-risk delete actions for a specific service in the AWS authorization system
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-actions-filter-service-severity-actiontype"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions?$filter=service/id eq 'ec2' and severity eq 'high' and actionType eq 'delete'
```

### Get an action

By primary key action ID.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-action-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions/{id}
```

By alternate key externalId.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-action-by-externalid"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions(externalId='{externalId}')
```

## Get policies

### List all policies

List all policies.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-policies"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies
```

List all policies matching a specific policy name.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-policies-filter-name"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies?$filter=displayName eq 'AdministratorAccess'
```

List all policies where the policy name contains a specific string.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-policies-filter-name-contains"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies?$filter=contains(displayName, 'Buckets')
```

List all custom policies.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-policies-filter-type"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies?$filter=type eq 'custom'
```

### Get a policy

By primary key policy ID.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-policies-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies/{id}
```

By alternate key externalId.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-policies-by-externalid"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies(externalId='{externalId}')
```

## Get resources

### List all resources

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-resources"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/resources
```

### Get a resource

By primary key resource ID.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-resource-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/resources/{id}
```

By alternate key externalId.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-resource-by-externalid"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/resources(externalId='{externalId}')
```

## Get services

### List all services

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-services"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/services
```

### Get a service

<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-service"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/services/{id}
```

## Request an AWS policy
<!-- {
  "blockType": "request",
  "name": "permissions-requests-request-aws-policy"
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
  "name": "permissions-requests-request-aws-action"
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

## Cancel a permissions request by ID

Either the requestor or an administrator can cancel an approved request, while only the requestor can cancel a pending (**statusDetail** of `submitted`) request.

```http
POST https://graph.microsoft.com/beta/permissionsManagement/scheduledPermissionsRequests/{id}/cancelAll
```

## List details of all permission requests

```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsManagement/permissionsRequestChanges
```

## List details of all permission requests filtered by the date they were modified

```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsManagement/permissionsRequestChanges?$filter=modificationDateTime gt {t}
```

## Get details of a permissions request

```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsManagement/permissionsRequestChanges/{id}
```

## See also

+ [Discover, remediate, and monitor permissions in multicloud infrastructures using permissions management APIs (preview)](/graph/api/resources/permissions-management-api-overview?view=graph-rest-beta&preserve-view=true)