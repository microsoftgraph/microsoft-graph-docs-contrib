---
title: "Create appRoleAssignment (for agentUser)"
description: "Grant an app role assignment to an agent user."
author: "yyuank"
ms.reviewer: "iamut"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: apiPageType
---

# Create appRoleAssignment (for agentUser)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Grant an app role assignment to an [agentUser](../resources/agentuser.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type      | Least privileged permission | Higher privileged permissions |
|:--------------------|:---------------------------|:-----------------------------|
|Delegated (work or school account) | User.ReadWrite.All | Not available. |
|Delegated (personal Microsoft account) | Not supported. | Not supported.|
|Application | User.ReadWrite.All | Not available. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/appRoleAssignments
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [appRoleAssignment](../resources/approleassignment.md) object.

You can specify the following properties when creating an **appRoleAssignment**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md). Optional.|
|appRoleId|Guid|**TODO: Add Description** Required.|
|creationTimestamp|DateTimeOffset|**TODO: Add Description** Optional.|
|principalDisplayName|String|**TODO: Add Description** Optional.|
|principalId|Guid|**TODO: Add Description** Optional.|
|principalType|String|**TODO: Add Description** Optional.|
|resourceDisplayName|String|**TODO: Add Description** Optional.|
|resourceId|Guid|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [appRoleAssignment](../resources/approleassignment.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_approleassignment_from_approleassignments"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{usersId}/appRoleAssignments
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.appRoleAssignment",
  "deletedDateTime": "String (timestamp)",
  "appRoleId": "Guid",
  "creationTimestamp": "String (timestamp)",
  "principalDisplayName": "String",
  "principalId": "Guid",
  "principalType": "String",
  "resourceDisplayName": "String",
  "resourceId": "Guid"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appRoleAssignment"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.appRoleAssignment",
  "id": "ff9f3843-845a-c408-508a-687bf19a481f",
  "deletedDateTime": "String (timestamp)",
  "appRoleId": "Guid",
  "creationTimestamp": "String (timestamp)",
  "principalDisplayName": "String",
  "principalId": "Guid",
  "principalType": "String",
  "resourceDisplayName": "String",
  "resourceId": "Guid"
}
```

