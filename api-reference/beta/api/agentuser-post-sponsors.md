---
title: "Add sponsor"
description: "Assign an agent user a sponsor."
author: "yyuank"
ms.reviewer: "iamut"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: apiPageType
---

# Add sponsors

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Assign an [agentUser](../resources/agentuser.md) a sponsor. Sponsors are users and groups that are responsible for this agent user's privileges in the tenant and for keeping the agent user's information and access up to date.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentuser-post-sponsors-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentuser-post-sponsors-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/sponsors/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [directoryObject](../resources/directoryobject.md) object.

You can specify the following properties when creating a **directoryObject**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `204 No Content` response code and a [directoryObject](../resources/directoryobject.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_directoryobjects"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{usersId}/sponsors/$ref
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.directoryObject",
  "deletedDateTime": "String (timestamp)"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.directoryObject",
  "id": "a6c034b8-621b-dee3-6abb-52cbce801fe9",
  "deletedDateTime": "String (timestamp)"
}
```

