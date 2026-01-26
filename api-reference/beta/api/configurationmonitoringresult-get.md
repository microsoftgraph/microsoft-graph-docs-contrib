---
title: "Get configurationMonitoringResult"
description: "Read the properties and relationships of a configurationMonitoringResult object."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# Get configurationMonitoringResult

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [configurationMonitoringResult](../resources/configurationmonitoringresult.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationmonitoringresult_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationmonitoringresult-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/configurationManagement/configurationMonitoringResults/{configurationMonitoringResultId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [configurationMonitoringResult](../resources/configurationmonitoringresult.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_configurationmonitoringresult"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitoringResults/66fa1689-22cb-49c1-8b5a-c94822b7b13b
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.configurationMonitoringResult"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "id": "66fa1689-22cb-49c1-8b5a-c94822b7b13b",
    "monitorId": "69b6b9ba-20c9-4ffb-beef-263c07063222",
    "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
    "runInitiationDateTime": "2024-12-12T09:00:36.1084955Z",
    "runCompletionDateTime": "2024-12-12T09:00:36.1084955Z",
    "runStatus": "failed",
    "driftsCount": 0
  }
}
```
