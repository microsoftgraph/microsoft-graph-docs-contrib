---
title: "Update customBlockPage"
description: "Update the custom block page settings for web requests blocked by Global Secure Access (GSA)."
author: fgomulka
ms.date: 09/04/2025
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
---

# Update customBlockPage

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a customBlockPage object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-customblockpage-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-customblockpage-update-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /networkAccess/settings/customBlockPage
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
|state|microsoft.graph.networkaccess.status|The current status of the custom block page. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. Required.|
|configuration|[microsoft.graph.networkaccess.blockPageConfigurationBase](../resources/networkaccess-blockpageconfigurationbase.md)|The current configuration of the customized message. The body can be input in limited markdown language, supporting links via the format: `[link](https://example.com)`. Optional.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_customblockpage"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/settings/customBlockPage
Content-Type: application/json

{
    "state": "enabled",
    "configuration": {
        "@odata.type": "#microsoft.graph.networkaccess.markdownBlockMessageConfiguration",
        "body": "Your admin at NaaSLitware has blocked your access. [Click here for NaaSLitware's Terms of Use](https://www.bing.com)."
    }
}
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

