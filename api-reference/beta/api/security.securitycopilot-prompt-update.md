---
title: "Update prompt"
description: "Update the properties of a prompt object."
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security.securitycopilot"
doc_type: apiPageType
---

# Update prompt

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a prompt object.

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
PATCH /security/securityCopilot/workspaces/{workspaceId}/sessions/{sessionId}/prompts/{promptId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|type|microsoft.graph.security.securitycopilot.promptType|Type of input prompts. Supported value is `prompt`. Required. Other possible values (unsupported) are: `unknown`, `context`, `skill`, `feedback`, `unknownFutureValue`.|
|content|String| Update of value of for prompt type. Required if using `prompt`|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.securityCopilot.prompt](../resources/security.securitycopilot-prompt.md) object in the response body.

``` json
{
  "@odata.type": "#microsoft.graph.security.securityCopilot.prompt",
  "id": "String (identifier)",
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

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_prompt"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/securityCopilot/workspaces/{workspaceId}/sessions/{sessionId}/prompts/{promptId}
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
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

