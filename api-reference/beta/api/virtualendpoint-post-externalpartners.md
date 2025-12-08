---
title: "Create externalPartner"
description: "Create a new cloudPcExternalPartner object."
author: "XunZhangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 08/22/2025
---

# Create externalPartner
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_post_externalpartners" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-post-externalpartners-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/virtualEndpoint/externalPartners
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) object.

You can specify the following properties when you create a **cloudPcExternalPartner**.

|Property|Type|Description|
|:---|:---|:---|
|enableConnection|Boolean|Enable or disable the connection to an external partner. If `true`, an external partner API accepts incoming calls from external partners. Required.|
|partnerId|String|The external partner ID. Required.|


## Response

If successful, this method returns a `201 Created` response code and a [cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) object in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_cloudpcexternalpartner_from_"
}
-->
```http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/externalPartners
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcExternalPartner",
  "partnerId": "198d7140-80bb-4843-8cc4-811377a49a92",
  "enableConnection": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-cloudpcexternalpartner-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-cloudpcexternalpartner-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-cloudpcexternalpartner-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-cloudpcexternalpartner-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-cloudpcexternalpartner-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-cloudpcexternalpartner-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcExternalPartner"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcExternalPartner",
  "id": "b3548526-e615-3785-3118-be70b3968ec5",
  "partnerId": "198d7140-80bb-4843-8cc4-811377a49a92",
  "enableConnection": true,
  "lastSyncDateTime": "2020-11-03T12:43:14Z",
  "connectionStatus": "available",
  "statusDetails": "The external partner is available"
}
```
