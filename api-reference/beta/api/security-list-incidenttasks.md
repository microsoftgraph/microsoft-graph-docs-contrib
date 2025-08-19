---
title: "List incidentTasks"
description: "Get incident tasks that Microsoft Defender Experts for XDR identified for remediation."
author: "BenAlfasi"
ms.date: 05/07/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List incidentTasks

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get incident tasks that Microsoft Defender Experts for XDR identified for remediation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-list-incidenttasks-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-list-incidenttasks-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/incidentTasks
```

## Optional query parameters

This method supports these OData query parameters to customize the response. For general information, see [OData query parameters](/graph/query-parameters).

|Parameter|Type|Description|
|:---|:---|:---|
|$filter|string|Filter results by property values. Supported properties: **incidentId** (`eq`), **status** (`eq`), **type** (`eq`), **lastUpdateDateTime** (`eq`), **createdDateTime** (`eq`), **actionType** (`eq`).|
|$orderby|string|Sort results by property values. Supported property: **lastUpdateDateTime**.|
|$top|integer|Set the page size of results. The default page size is 500 results and the maximum is 500 results.|
|$select|string|Choose specific properties to include in results.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [security-incidentTask](../resources/security-incidenttask.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_list_incidenttasks"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/incidentTasks
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-list-incidenttasks-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-list-incidenttasks-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-list-incidenttasks-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-list-incidenttasks-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-list-incidenttasks-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-list-incidenttasks-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-list-incidenttasks-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "name": "get_list_incidenttasks",
  "truncated": false,
  "@odata.type": "collection(microsoft.graph.security.incidentTask)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "collection(#microsoft.graph.security.incidentTask)",
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.incidentTask",
      "id": "213213",
      "incident": {
        "@odata.type": "#microsoft.graph.security.incident",
        "id": "123"
      },
      "status": "open",
      "source": "defenderExpertsXDR",
      "displayName": "Isolate device testmachine20",
      "description": "This action will isolate device testmachine20 from the network.",
      "createdDateTime": "2023-06-26T19:07:39.7433333Z",
      "createdByDisplayName": "Defender Experts",
      "lastModifiedDateTime": "2023-06-27T10:49:33.98Z",
      "lastModifiedByDisplayName": "bealfasi",
      "actionType": "isolateDevice",
      "actionStatus": "notStarted",
      "responseAction": {
        "@odata.type": "#microsoft.graph.security.isolateDeviceResponseAction",
        "isolationType": "full",
        "identifierValue": "02851525-dc00-438b-83f5-3b2947bf4a48"
      }
    }
  ]
}
```

<!--
{
  "type": "#page.annotation",
  "description": "List incidentTask",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
