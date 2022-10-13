---
title: "Add comment to alert"
description: "Adds a comment to the end of the alert comments list"
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Add comment to alert
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Adds a comment to an existing [alert](../resources/security-alert.md) based on the specified alert **id** property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|SecurityAlert.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|SecurityAlert.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/alerts_v2/{alertId}/comments
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body of this API, along with the comment, provide the type of the [alertComment](../resources/security-alertcomment.md). See example below.

|Property|Type|Description|
|:---|:---|:---|
|comment|String|The comment to be added.|


## Response

If successful, this method returns a `200 OK` response code and an updated list of all [alertComment](../resources/security-alertcomment.md) of the alert.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["da637865765418431569_-773071023"],
  "name": "alert_v2_addcomment"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/alerts_v2/da637865765418431569_-773071023/comments
Content-Type: application/json

{
    "@odata.type": "microsoft.graph.security.alertComment",
    "comment": "Demo for docs"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-alert-v2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-alert-v2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-alert-v2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-alert-v2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-alert-v2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "@odata.type": "collection(microsoft.graph.security.alertComment)",
  "truncated": true
}
-->

``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/alerts_v2('da637865765418431569_-773071023')/comments",
    "value": [
        {
            "comment": "test",
            "createdByDisplayName": "secAdmin@contoso.onmicrosoft.com",
            "createdDateTime": "2022-10-13T07:08:30.1606766Z"
        },
        {
            "comment": "Demo for docs",
            "createdByDisplayName": "secAdmin@contoso.onmicrosoft.com",
            "createdDateTime": "2022-10-13T07:08:40.3825324Z"
        }
    ]
}
```
