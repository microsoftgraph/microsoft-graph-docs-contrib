---
title: "Permissions Management API operations quick reference for AWS authorization systems"
description: "API operations quick reference guide for AWS authorization systems."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.topic: how-to
ms.prod: "multicloud-permissions-management"
ms.date: 01/05/2024
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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-via-filter"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems?$filter=authorizationSystemType eq 'aws'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/list-authorizationsystems-aws-via-filter-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/list-authorizationsystems-aws-via-filter-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/list-authorizationsystems-aws-via-filter-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/list-authorizationsystems-aws-via-filter-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/list-authorizationsystems-aws-via-filter-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/list-authorizationsystems-aws-via-filter-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/list-authorizationsystems-aws-via-filter-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/list-authorizationsystems-aws-via-filter-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

List AWS authorization systems onboarded to Permissions Management.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/microsoft.graph.awsAuthorizationSystem
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/list-authorizationsystems-aws-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/list-authorizationsystems-aws-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/list-authorizationsystems-aws-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/list-authorizationsystems-aws-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/list-authorizationsystems-aws-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/list-authorizationsystems-aws-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/list-authorizationsystems-aws-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/list-authorizationsystems-aws-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

Identify all AWS authorization systems that are online and have permissions modification capability enabled.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-permissionsmodificationcapability-entitlementsdatacollectionstatus"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems?$filter=authorizationSystemType eq 'aws' and dataCollectionInfo/entitlements/microsoft.graph.entitlementsDataCollection/permissionsModificationCapability eq 'enabled' and dataCollectionInfo/entitlements/microsoft.graph.entitlementsDataCollection/status eq 'online'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/get-authorizationsystems-aws-permissionsmodificationcapability-entitlementsdatacollectionstatus-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/get-authorizationsystems-aws-permissionsmodificationcapability-entitlementsdatacollectionstatus-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/get-authorizationsystems-aws-permissionsmodificationcapability-entitlementsdatacollectionstatus-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/get-authorizationsystems-aws-permissionsmodificationcapability-entitlementsdatacollectionstatus-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/get-authorizationsystems-aws-permissionsmodificationcapability-entitlementsdatacollectionstatus-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/get-authorizationsystems-aws-permissionsmodificationcapability-entitlementsdatacollectionstatus-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/get-authorizationsystems-aws-permissionsmodificationcapability-entitlementsdatacollectionstatus-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/get-authorizationsystems-aws-permissionsmodificationcapability-entitlementsdatacollectionstatus-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Get identities in an AWS authorization system

### List all identities
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-identities-all"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/all
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/list-authorizationsystems-aws-identities-all-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Get one identity

By primary key ID.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-identities-by-id"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/all/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/get-authorizationsystems-aws-identities-by-id-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-identities-roles"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/roles
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/list-authorizationsystems-aws-identities-roles-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Get one AWS role

By primary key role ID.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-identities-roles-by-id"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/roles/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/get-authorizationsystems-aws-identities-roles-by-id-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-identities-users"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/users
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/list-authorizationsystems-aws-identities-users-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Get one AWS user

By primary key user ID.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-identities-users-by-id"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/users/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/get-authorizationsystems-aws-identities-users-by-id-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

By alternate key externalId.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-identities-users-by-id"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/users(externalId='{externalId}')
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/get-authorizationsystems-aws-identities-users-by-id-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### List assumable roles for an AWS user

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-identities-users-assumableroles"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/users/{id}/assumableRoles
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/get-authorizationsystems-aws-identities-users-assumableroles-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Get actions

### List all actions

List all actions.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-actions"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/list-authorizationsystems-aws-actions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

List actions for a specific service in an AWS authorization system.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-actions-filter-service"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions?$filter=service/id eq 'ec2'
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/list-authorizationsystems-aws-actions-filter-service-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

List high-risk delete actions for a specific service in the AWS authorization system
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-actions-filter-service-severity-actiontype"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions?$filter=service/id eq 'ec2' and severity eq 'high' and actionType eq 'delete'
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/list-authorizationsystems-aws-actions-filter-service-severity-actiontype-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Get an action

By primary key action ID.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-action-by-id"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/actions/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/get-authorizationsystems-aws-action-by-id-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-policies"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/list-authorizationsystems-aws-policies-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

List all policies matching a specific policy name.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-policies-filter-name"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies?$filter=displayName eq 'AdministratorAccess'
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/list-authorizationsystems-aws-policies-filter-name-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

List all policies where the policy name contains a specific string.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-policies-filter-name-contains"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies?$filter=contains(displayName, 'Buckets')
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/list-authorizationsystems-aws-policies-filter-name-contains-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-policies-by-id"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/policies/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/list-authorizationsystems-aws-policies-by-id-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-resources"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/resources
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/list-authorizationsystems-aws-resources-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Get a resource

By primary key resource ID.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-resource-by-id"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/resources/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/get-authorizationsystems-aws-resource-by-id-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list-authorizationsystems-aws-services"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/services
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/list-authorizationsystems-aws-services-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Get a service

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-authorizationsystems-aws-service"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/services/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/get-authorizationsystems-aws-service-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Request an AWS policy
# [HTTP](#tab/http)
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/permissions-requests-request-aws-policy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/permissions-requests-request-aws-policy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/permissions-requests-request-aws-policy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/permissions-requests-request-aws-policy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/permissions-requests-request-aws-policy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/permissions-requests-request-aws-policy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/permissions-requests-request-aws-policy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/permissions-requests-request-aws-policy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Request an AWS action
# [HTTP](#tab/http)
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/permissions-requests-request-aws-action-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/beta/permissions-requests-request-aws-action-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/permissions-requests-request-aws-action-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/permissions-requests-request-aws-action-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/permissions-requests-request-aws-action-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/permissions-requests-request-aws-action-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/permissions-requests-request-aws-action-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/permissions-requests-request-aws-action-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Cancel a permissions request by ID

Either the requestor or an administrator can cancel an approved request, while only the requestor can cancel a pending (**statusDetail** of `submitted`) request.

```http
POST https://graph.microsoft.com/beta/identityGovernance/permissionsManagement/scheduledPermissionsRequests/{id}/cancelAll
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

## Related content

+ [Discover, remediate, and monitor permissions in multicloud infrastructures using permissions management APIs (preview)](/graph/api/resources/permissions-management-api-overview?view=graph-rest-beta&preserve-view=true)
