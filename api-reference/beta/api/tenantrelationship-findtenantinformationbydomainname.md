---
title: "tenantRelationship: findTenantInformationByDomainName"
description: "Given a domain name, search for a tenant and read its tenantInformation."
author: "adimitui"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# tenantRelationship: findTenantInformationByDomainName

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Given a domain name, search for a tenant and read its [tenantInformation](../resources/tenantInformation.md). You can use this API to validate tenant information and use their **tenantId** to [configure cross-tenant access settings between you and the tenant](../resources/crosstenantaccesspolicyconfigurationpartner.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantrelationship_findtenantinformationbydomainname" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantrelationship-findtenantinformationbydomainname-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /tenantRelationships/findTenantInformationByDomainName(domainName='{id}')
```

## Function parameters

In the request URL, provide the following query parameters with values. The following table shows the parameters that must be used with this function.

| Parameter | Type | Description |
|:---|:---|:---|
| domainName | String | Primary domain name of a Microsoft Entra tenant. |

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [tenantInformation](../resources/tenantinformation.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tenantrelationshiprootthis.findtenantinformationbydomainname"
}
-->

``` http
GET https://graph.microsoft.com/beta/tenantRelationships/findTenantInformationByDomainName(domainName='contoso.com')
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tenantrelationshiprootthisfindtenantinformationbydomainname-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.tenantInformation"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.tenantInformation",
    "tenantId": "6babcaad-604b-40ac-a9d7-9fd97c0b779f",
    "federationBrandName": null,
    "displayName": "Contoso, Ltd",
    "defaultDomainName": "contoso.com"
}
```
