---
title: "Get onPremisesSyncBehavior"
description: "Read the properties of an onPremisesSyncBehavior object."
author: "rubytek-git"
ms.reviewer: "Darshan.Maiya,rteklemariam"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# Get onPremisesSyncBehavior

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of an [onPremisesSyncBehavior](../resources/onpremisessyncbehavior.md) object. The **isCloudManaged** property indicates whether the object's source of authority is set to the cloud. If `true`, updates from on-premises Active Directory are blocked in the cloud; if `false`, updates from on-premises Active Directory are allowed in the cloud and the object can be taken over by on-premises Active Directory.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-|:-|:-|:-|
| [group](../resources/group.md)| Group-OnPremisesSyncBehavior.ReadWrite.All | Not supported. | Group-OnPremisesSyncBehavior.ReadWrite.All |
| [orgContact](../resources/contact.md)| Contacts-OnPremisesSyncBehavior.ReadWrite.All | Not supported. | Contacts-OnPremisesSyncBehavior.ReadWrite.All |
| [user](../resources/user.md)| User-OnPremisesSyncBehavior.ReadWrite.All | Not supported. | User-OnPremisesSyncBehavior.ReadWrite.All |

> [!IMPORTANT]
> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. *Hybrid Administrator* is the least privileged role supported for this operation.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /contacts/{id}/onPremisesSyncBehavior
GET /groups/{id}/onPremisesSyncBehavior
GET /users/{id}/onPremisesSyncBehavior
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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_onpremisessyncbehavior"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/groups/673f83c9-7e84-4db8-9a63-b8a8c309fdad/onPremisesSyncBehavior
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-onpremisessyncbehavior-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-onpremisessyncbehavior-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-onpremisessyncbehavior-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-onpremisessyncbehavior-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-onpremisessyncbehavior-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-onpremisessyncbehavior-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onPremisesSyncBehavior"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.onPremisesSyncBehavior",
    "id": "673f83c9-7e84-4db8-9a63-b8a8c309fdad",
    "isCloudManaged": true
  }
}
```

