---
title: "Get onPremisesSyncBehavior"
description: "Read the properties and relationships of an onPremisesSyncBehavior object."
author: "rubytek-git"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# Get onPremisesSyncBehavior

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [onPremisesSyncBehavior](../resources/onpremisessyncbehavior.md) object. The **isCloudManaged** property indicates whether the object’s source of authority is set to the cloud. If `true`, updates from on-premises Active Directory are blocked; if `false`, updates from Microsoft Entra ID are blocked;
## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onpremisessyncbehavior-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onpremisessyncbehavior-get-permissions.md)]

> [!IMPORTANT]
> I> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. The following least privileged roles are supported for this operation: *Groups Administrator* (least privilege), *Hybrid Administrator*.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /groups/{groupsId}/onPremisesSyncBehavior
```

## Optional query parameters

Not Supported.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [onPremisesSyncBehavior](../resources/onpremisessyncbehavior.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_onpremisessyncbehavior"
}
-->
``` http
GET https://graph.microsoft.com/beta/groups/367c0f19-49s1-41b5-a03f-6f3887bd0ed8/onPremisesSyncBehavior
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onPremisesSyncBehavior"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.onPremisesSyncBehavior",
    "id": "39b4e676-e148-6060-855c-a77f67b5ac06",
    "isCloudManaged": true
  }
}
```

