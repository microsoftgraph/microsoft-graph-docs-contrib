---
title: "Permissions Management API quick reference for GCP authorization systems"
description: "Quick reference guide for Permissions Management API operations on GCP authorization systems."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.topic: how-to
ms.prod: "multicloud-permissions-management"
ms.date: 11/22/2023
#CustomerIntent: As a developer, I want a one-stop shop for all the common tasks I can program through the permissions management APIs so that I don't have to visit all API docs one at a time.
---

# Permissions Management API quick reference for GCP authorization systems

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

## List GCP authorization systems

List GCP authorization systems onboarded to Permissions Management by filtering by the **authorizationSystemType** property.

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-gcp-via-filter"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems?$filter=authorizationSystemType eq 'gcp'
```

List GCP authorization systems onboarded to Permissions Management.

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-gcp"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/microsoft.graph.gcpAuthorizationSystem
```

Identify all GCP authorization systems that are online and have permissions modification capability enabled.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-gcp-permissionsmodificationcapability-entitlementsdatacollectionstatus"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems?$filter=authorizationSystemType eq 'gcp' and dataCollectionInfo/entitlements/microsoft.graph.entitlementsDataCollection/permissionsModificationCapability eq 'enabled' and dataCollectionInfo/entitlements/microsoft.graph.entitlementsDataCollection/status eq 'online'
```

## Get identities in an GCP authorization system

### List all identities
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-gcp-identities-all"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/all
```

### Get one identity

By primary key ID.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-gcp-identities-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/all/{id}
```

By alternate key externalId.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-gcp-identities-by-externalid"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/all(externalId='{externalId}')
```

## Get GCP users

### List all GCP users

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-gcp-identities-users"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/users
```

### Get one GCP user

By primary key user ID.

<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-gcp-identities-users-by-id"
}-->
```http
GET /external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/users/{id}
```

By alternate key externalId.

<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-gcp-identities-users-by-id"
}-->
```http
GET /external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/users(externalId='{externalId}')
```

## Get GCP service accounts

### List all GCP service accounts

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-gcp-identities-serviceaccounts"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/serviceAccounts
```

### Get one GCP service account

By primary key user ID.

<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-gcp-identities-serviceaccount-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/serviceAccounts/{id}
```

By alternate key externalId.

<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-gcp-identities-serviceaccount-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/serviceAccounts(externalId='{externalId}')
```

## Get actions

### List all actions

List all actions.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-gcp-actions"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/actions
```

List actions for a specific service in a GCP authorization system.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-gcp-actions"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/actions?$filter=service/id eq 'compute'
```

### Get an action

By primary key action ID.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-gcp-action-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/actions/{id}
```

By alternate key externalId.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-gcp-action-by-externalid"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/actions(externalId={externalId})
```

## Get resources

### List all resources

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-gcp-resources"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/resources
```

### Get a resource

By primary key resource ID.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-gcp-resource-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/resources/{id}
```

By alternate key externalId.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-gcp-resource-by-externalid"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/resources(externalId={externalId})
```

## Get roles

### List all roles

List all roles.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-gcp-roles"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/roles
```

### Get a role definition

By primary key role ID assigned by Permissions Management.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-gcp-role-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/roles/{id}
```

By alternate key externalId.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-gcp-role-by-externalid"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/roles(externalId='{externalId}')
```

## Get services

### List all services

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-gcp-services"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/services
```

### Get a service

<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-gcp-service"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/services/{id}
```

## See also

+ [Discover, remediate, and monitor permissions in multicloud infrastructures using permissions management APIs (preview)](/graph/api/resources/permissions-management-api-overview?view=graph-rest-beta&preserve-view=true)