---
title: "List plugin objects"
description: "Get a list of the plugin objects and their properties."
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: apiPageType
---

# List plugin objects

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [plugin](../resources/security-securitycopilot-plugin.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-securitycopilot-workspace-list-plugins-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-securitycopilot-workspace-list-plugins-permissions.md)]

> [!IMPORTANT]
> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Security Copilot role](https://learn.microsoft.com/copilot/security/authentication). The following least privileged roles are supported for this operation.
> - Security Copilot Contributor

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/securityCopilot/workspaces/{workspaceId}/plugins
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$select` and `$top`  OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [plugin](../resources/security-securitycopilot-plugin.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_plugin"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/securityCopilot/workspaces/default/plugins?$filter=name+eq+'Entra'
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.securityCopilot.plugin"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/securityCopilot/workspaces('default')/plugins",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET security/securityCopilot/workspaces('<key>')/plugins?$select=authorization,catalogScope",
    "value": [
        {
            "name": "Entra",
            "displayName": "Microsoft Entra",
            "description": "Skills that interact with the Microsoft Graph APIs.",
            "category": "microsoft",
            "catalogScope": "global",
            "previewState": "ga",
            "isEnabled": true,
            "authorization": null,
            "settings": []
        }
    ]
}

```

