---
title: "Update federatedTokenValidationPolicy"
description: "Update the properties of a federatedTokenValidationPolicy object."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 03/30/2026
---

# Update federatedTokenValidationPolicy

Namespace: microsoft.graph

Update the properties of a [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "federatedtokenvalidationpolicy-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/federatedtokenvalidationpolicy-update-permissions.md)]

[!INCLUDE [rbac-federatedtokenvalidationpolicy-apis](../includes/rbac-for-apis/rbac-federatedtokenvalidationpolicy-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PUT /policies/federatedTokenValidationPolicy
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

> [!IMPORTANT]
> If you set `rootDomains` to `enumerated` or `allManagedAndEnumeratedFederated`, you must specify `@odata.type` as `#microsoft.graph.enumeratedDomains` on the **validatingDomains** property. Omitting the discriminator in these cases returns `HTTP 400 Bad Request`.
>
> For any other `rootDomains` value (`none`, `all`, `allFederated`, `allManaged`), the subtype is inferred as `microsoft.graph.allDomains`, so `@odata.type` is optional.

|Property|Type|Description|
|:---|:---|:---|
|validatingDomains|[validatingDomains](../resources/validatingdomains.md)|Verified domains that Microsoft Entra validates whether the federated account's root domain matches with the mapped Microsoft Entra account's root domain. Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_federatedtokenvalidationpolicy"
}
-->
```http
PUT https://graph.microsoft.com/v1.0/policies/federatedTokenValidationPolicy
Content-Type: application/json

{
  "validatingDomains": {
    "@odata.type": "#microsoft.graph.enumeratedDomains",
    "rootDomains": "enumerated",
    "domainNames": ["contoso.com", "fabrikam.com"]
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.federatedTokenValidationPolicy"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.federatedTokenValidationPolicy",
  "id": "932b8f7f-68c1-6fe5-59ab-56e1ff752f30",
  "deletedDateTime": null,
  "validatingDomains": {
    "@odata.type": "#microsoft.graph.enumeratedDomains",
    "rootDomains": "enumerated",
    "domainNames": ["contoso.com", "fabrikam.com"]
  }
}
```
