---
title: "Get a specific cloudPC for user"
description: "Get a specified cloudPC device attributed to the signed-in user"
author: "xinliu22"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Get cloudPC for user

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [cloudPC](../resources/cloudpc.md) device that is attributed to the signed-in user.

>[!NOTE]
>This operation returns only the following properties: **id**, **displayName**, **imageDisplayName**, **servicePlanId**, **servicePlanName**, **servicePlanType**, **status**, **lastModifiedDateTime**, **aadDeviceId**, **statusDetails**, **gracePeriodEndDateTime**.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | CloudPC.Read.All, CloudPC.ReadWrite.All     |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Not supported.                              |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/cloudPCs/{id}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a single [cloudPC](../resources/cloudpc.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_cloudpc"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/cloudPCs/662009bc-7732-4f6f-8726-25883518ffff
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-get-cloudpc-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-get-cloudpc-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/user-get-cloudpc-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-get-cloudpc-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/user-get-cloudpc-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

**Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPC"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.cloudPC",
    "aadDeviceId": "f5ff445f-7488-40f8-8ab9-ee784a9c1f33",
    "id": "662009bc-7732-4f6f-8726-25883518ffff",
    "displayName": "Demo-1",
    "imageDisplayName": "Windows-10 19h1-evd",
    "servicePlanId": "dbb9148c-ff83-4a4c-8d7f-28752e93ffff",
    "servicePlanName": "lite",
    "servicePlanType": "enterprise",
    "status": "provisioned",
    "lastModifiedDateTime": "2020-11-03T10:29:57Z",
    "statusDetails": null,
    "gracePeriodEndDateTime": "2020-11-010T20:00:34Z"
}
```
