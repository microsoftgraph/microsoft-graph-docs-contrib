---
title: "recommendation: tenantSecureScores"
description: "Get historical Secure Score data for your Microsoft Entra tenant."
author: "sacsai"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: apiPageType
---

# recommendation: tenantSecureScores
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the historical Secure Score data for your Microsoft Entra tenant. This API returns the latest score and doesn't include the details for each control. To view detailed information, see the [secureScore resource type](../resources/securescore.md) and its associated methods.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|DirectoryRecommendations.Read.All|DirectoryRecommendations.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|DirectoryRecommendations.Read.All|DirectoryRecommendations.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/recommendations/tenantSecureScores
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [tenantSecureScore](../resources/tenantsecurescore.md) collection in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "recommendationthis.tenantsecurescores"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/recommendations/tenantSecureScores
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.tenantSecureScore)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "microsoft.graph.tenantSecureScore"
    }
  ]
}
```

