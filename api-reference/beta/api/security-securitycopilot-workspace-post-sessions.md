---
title: "Create session"
description: "Create a new session object."
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security.securitycopilot"
doc_type: apiPageType
---

# Create session

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new session object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "securitycopilot-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/securitycopilot-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/securityCopilot/workspaces/{workspaceId}/sessions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.security.securityCopilot.session](../resources/security.securitycopilot-session.md) object.

You can specify the following properties when creating a **session**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display Name of the session. Optional.|




## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.securityCopilot.session](../resources/security.securitycopilot-session.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_session_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/securityCopilot/workspaces/{workspaceId}/sessions
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.securityCopilot.session",
  "displayName": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.securityCopilot.session"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.securityCopilot.session",
  "id": "12ac07f0-ccc3-0448-1215-6fad6e44263a",
  "displayName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)"
}
```

