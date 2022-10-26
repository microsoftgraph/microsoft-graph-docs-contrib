---
title: "cloudPC: getShiftWorkCloudPcAccessState"
description: "Get the access state of a shift work Cloud PC. This API should only support shift work Cloud PC, it should fail with 400 when calling it with dedicated Cloud PC. Current usage scenario: web client needs to support shift work Cloud PC. `SharedCloudPcAccessState` is used to validate the bookmark scenario. If the tab is launched and the sharedCloudPcAccessState is not active/activating, web client will pop the "Bad bookmark" UI to go back to IWPortal to access the Cloud PC."
author: "ningjingbo"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: getShiftWorkCloudPcAccessState
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [shiftWorkCloudPcAccessState](../resources/shiftWorkCloudPcAccessState.md) for the shift work cloudPc.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/cloudPCs/{cloudPCId}/getShiftWorkCloudPcAccessState
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [shiftWorkCloudPcAccessState](../resources/shiftWorkCloudPcAccessState.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpcthis.getShiftWorkCloudPcAccessState"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/cloudPCs/{cloudPCId}/getShiftWorkCloudPcAccessState
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcthisgetshiftworkcloudpcaccessstate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcthisgetshiftworkcloudpcaccessstate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcthisgetshiftworkcloudpcaccessstate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcthisgetshiftworkcloudpcaccessstate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/cloudpcthisgetshiftworkcloudpcaccessstate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcthisgetshiftworkcloudpcaccessstate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.shiftWorkCloudPcAccessState"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#microsoft.graph.shiftWorkCloudPcAccessState",
    "value": {
        "noLicensesAvailable"
    }
}
```

