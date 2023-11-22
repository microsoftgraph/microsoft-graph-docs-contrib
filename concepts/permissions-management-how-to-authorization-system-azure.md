---
title: "Permissions Management API operations quick reference for Azure authorization systems"
description: "API operations quick reference guide for Azure authorization systems."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.topic: how-to
ms.prod: "multicloud-permissions-management"
ms.date: 11/22/2023
#CustomerIntent: As a developer, I want a one-stop shop for all the common tasks I can program through the permissions management APIs so that I don't have to visit all API docs one at a time.
---

# Permissions Management API operations quick reference for Azure authorization systems

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

## List Azure authorization systems

List Azure authorization systems onboarded to Permissions Management by filtering by the **authorizationSystemType** property.

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-azure-via-filter"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems?$filter=authorizationSystemType eq 'azure'
```

List Azure authorization systems onboarded to Permissions Management.

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-azure"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/microsoft.graph.azureAuthorizationSystem
```

Identify all Azure authorization systems that are online and have permissions modification capability enabled.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-azure-permissionsmodificationcapability-entitlementsdatacollectionstatus"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems?$filter=authorizationSystemType eq 'azure' and dataCollectionInfo/entitlements/microsoft.graph.entitlementsDataCollection/permissionsModificationCapability eq 'enabled' and dataCollectionInfo/entitlements/microsoft.graph.entitlementsDataCollection/status eq 'online'
```

## Get identities in an Azure authorization system

### List all identities
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-azure-identities-all"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/all
```

### Get one identity

By primary key ID.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-azure-identities-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/all/{id}
```

By alternate key externalId.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-azure-identities-by-externalid"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/all(externalId='{externalId}')
```

## Get Azure managed identities

### List all Azure managed identities

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-azure-identities-managedidentities"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/managedIdentities
```

### Get one Azure managed identity

By primary key managed identity ID.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-azure-identities-managedidentity-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/managedIdentities/{id}
```

By alternate key externalId.

<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-azure-identities-managedidentity-by-externalid"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/managedIdentities(externalId='{externalId}')
```

## Get Azure users

### List all Azure users

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-azure-identities-users"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/users
```

### Get one Azure user

By primary key user ID.

<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-azure-identities-users-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/users/{id}
```

By alternate key externalId.

<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-azure-identities-users-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/users(externalId='{externalId}')
```

## Get Azure service principals

### List all Azure service principals

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-azure-identities-serviceprincipals"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/servicePrincipals
```

### Get one Azure service principal

By primary key user ID.

<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-azure-identities-serviceprincipals-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/servicePrincipals/{id}
```

By alternate key externalId.

<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-azure-identities-serviceprincipals-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/associatedIdentities/servicePrincipals(externalId='{externalId}')
```

## Get actions

### List all actions

List all actions.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-azure-actions"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/actions
```

List actions for a specific service in an Azure authorization system.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-azure-actions-filter-service"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/actions?$filter=service/id eq 'Microsoft.Storage'
```

List high-risk delete actions for a specific service in the Azure authorization system
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-azure-actions-filter-service-severity-actiontype"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/actions?$filter=service/id eq 'Microsoft.Storage' and severity eq 'high' and actionType eq 'delete'
```

### Get an action

By primary key action ID.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-azure-action-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/actions/{id}
```

By alternate key externalId.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-azure-action-by-externalid"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/actions(externalId={externalId})
```

## Get resources

### List all resources

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-azure-resources"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/resources
```

### Get a resource

By primary key resource ID.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-azure-resource-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/resources/{id}
```

By alternate key externalId.
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-azure-resource-by-externalid"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/resources(externalId={externalId})
```

## Get role definition

### List all role definitions

List all role definitions.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-azure-roledefinitions"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/roleDefinitions
```

List all role definitions by assignable scopes.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-azure-roledefinitions"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/graph.azureAuthorizationSystem/roleDefinitions?$filter=assignableScopes/any(p:p eq '/' or '/subscriptions/87eefd90-95a3-480a-ba42-56ff299a05ee' or '/subscriptions/e160b34b-2a0f-41f6-aaf3-09c5a9f43768/resourceGroups/2eResourceGroup')
```

### Get a role definition

By primary key role definition ID assigned by Permissions Management.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-azure-roledefinition-by-id"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/roleDefinitions/{id}
```

By alternate key externalId which is the globally unique ID of the role in Microsoft Azure.
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-azure-roledefinition-by-externalid"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/policies(externalId='{externalId}')
```

## Get services

### List all services

<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-azure-services"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/services
```

### Get a service

<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-azure-service"
}-->
```http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/services/{id}
```

## See also

+ [Discover, remediate, and monitor permissions in multicloud infrastructures using permissions management APIs (preview)](/graph/api/resources/permissions-management-api-overview?view=graph-rest-beta&preserve-view=true)