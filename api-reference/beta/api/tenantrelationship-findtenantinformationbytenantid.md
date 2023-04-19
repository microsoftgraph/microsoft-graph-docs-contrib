---
title: "tenantRelationship: findTenantInformationByTenantId"
description: "Given a tenant ID, search for a tenant and read its tenantInformation."
author: "adimitui"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# tenantRelationship: findTenantInformationByTenantId

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Given a tenant ID, search for a tenant and read its [tenantInformation](../resources/tenantInformation.md). You can use this API to validate tenant information and use their **tenantId** to [configure cross-tenant cross-tenant access settings between you and the tenant](../resources/crosstenantaccesspolicyconfigurationpartner.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CrossTenantInformation.ReadBasic.All|
|Delegated (personal Microsoft account)|None|
|Application|CrossTenantInformation.ReadBasic.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/findTenantInformationByTenantId(tenantId='{id}')
```

## Function parameters

In the request URL, provide the following query parameters with values. The following table shows the parameters that must be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
| tenantId | String | Unique tenant identifier of an Azure AD tenant. |

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [tenantInformation](../resources/tenantinformation.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tenantrelationshiprootthis.findtenantinformationbytenantid"
}
-->

``` http
GET https://graph.microsoft.com/beta/tenantRelationships/findTenantInformationByTenantId(tenantId='6babcaad-604b-40ac-a9d7-9fd97c0b779f')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tenantrelationshiprootthisfindtenantinformationbytenantid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tenantrelationshiprootthisfindtenantinformationbytenantid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tenantrelationshiprootthisfindtenantinformationbytenantid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tenantrelationshiprootthisfindtenantinformationbytenantid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tenantrelationshiprootthisfindtenantinformationbytenantid-php-snippets.md)]
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
    "defaultDomainName": "CONTOSO18839.onmicrosoft.com"
}
```
