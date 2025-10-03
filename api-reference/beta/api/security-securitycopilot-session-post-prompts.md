---
title: "Create prompt"
description: "Create a new prompt object."
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: apiPageType
---

# Create prompt

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new prompt object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-securitycopilot-session-post-prompts-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-securitycopilot-session-post-prompts-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/securityCopilot/workspaces/{workspaceId}/sessions/{sessionId}/prompts
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.security.securityCopilot.prompt](../resources/security-securitycopilot-prompt.md) object.

You can specify the following properties when creating a **prompt**.  

|Property|Type|Description|
|:---|:---|:---|
|type|microsoft.graph.security.securitycopilot.promptType|The type of input prompts. The possible values are: `unknown`, `context`, `prompt`, `skill`, `feedback`, `unknownFutureValue`. **Only `prompt` is currently supported.** |
|content|String|Input text when used with type `prompt` for evaluation. Required for AI evaluation.|


## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.securityCopilot.prompt](../resources/security-securitycopilot-prompt.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_prompt_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/securityCopilot/workspaces/{workspaceId}/sessions/{sessionId}/prompts
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.securityCopilot.prompt",
  "type": "String",
  "skillName": "String",
  "skillInputDescriptors": [
    {
      "@odata.type": "microsoft.graph.security.securityCopilot.skillInputDescriptor"
    }
  ],
  "content": "String",
  "inputs": {
    "@odata.type": "microsoft.graph.Dictionary"
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.securityCopilot.prompt"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.securityCopilot.prompt",
  "id": "ae13eafb-50c5-1af9-23c2-3b303197f4ce",
  "type": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "skillName": "String",
  "skillInputDescriptors": [
    {
      "@odata.type": "microsoft.graph.security.securityCopilot.skillInputDescriptor"
    }
  ],
  "content": "String",
  "inputs": {
    "@odata.type": "microsoft.graph.Dictionary"
  }
}
```

