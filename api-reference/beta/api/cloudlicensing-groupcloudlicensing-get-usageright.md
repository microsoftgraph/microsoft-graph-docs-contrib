---
title: "Get usageRight for a group"
description: "Read the properties and relationships of a microsoft.graph.cloudLicensing.usageRight object."
author: "patrick-starrin"
ms.localizationpriority: medium
doc_type: apiPageType
---

# Get usageRight for a group

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [usageRight](../resources/cloudlicensing-usageright.md) object for a group.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudlicensing-groupusageright-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudlicensing-groupusageright-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /groups/{groupId}/cloudLicensing/usageRights/{usageRightId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [usageRight](../resources/cloudlicensing-usageright.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "cloudlicensing-groupusageright-get-example"
}
-->
``` http
GET https://graph.microsoft.com/beta/groups/{groupId}/cloudLicensing/usageRights/{usageRightId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-group-usageright-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-group-usageright-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-group-usageright-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-group-usageright-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-group-usageright-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-group-usageright-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-group-usageright-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudLicensing.usageRight"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudLicensing.usageRight",
  "id": "1e373a1d-1f05-28cf-bfc0-ee0ecfd3db15",
  "skuId": "639dec6b-bb19-468b-871c-c5c441c4b0cb",
  "skuPartNumber": "Microsoft_365_Copilot",
  "services": [
    {
      "@odata.type": "microsoft.graph.cloudLicensing.service",
      "assignableTo": "users,groups",
      "planId": "fe6c28b3-d468-44ea-bbd0-a10a5167435c",
      "planName": "COPILOT_STUDIO_IN_COPILOT_FOR_M365"
    }
  ]
}
```
