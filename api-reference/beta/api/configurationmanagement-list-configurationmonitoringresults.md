---
title: "List configurationMonitoringResults"
description: "Get a list of the configurationMonitoringResult objects and their properties."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# List configurationMonitoringResults

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [configurationMonitoringResult](../resources/configurationmonitoringresult.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationmanagement_list_configurationmonitoringresults" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationmanagement-list-configurationmonitoringresults-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/configurationManagement/configurationMonitoringResults
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$orderBy`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [configurationMonitoringResult](../resources/configurationmonitoringresult.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_configurationmonitoringresult"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitoringResults
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.configurationMonitoringResult)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/configurationManagement/configurationMonitoringResults",
  "@microsoft.graph.tips": "This request only returns a subset of the resource's properties. Your app will need to use $select to return non-default properties. To find out what other properties are available for this resource see https://learn.microsoft.com/graph/api/resources/configurationMonitoringResult",
  "value": [
    {
      "id": "66fa1689-22cb-49c1-8b5a-c94822b7b13b",
      "monitorId": "69b6b9ba-20c9-4ffb-beef-263c07063222",
      "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
      "runInitiationDateTime": "2024-12-12T09:00:36.1084955Z",
      "runCompletionDateTime": "2024-12-12T09:00:36.1084955Z",
      "runStatus": "failed",
      "driftsCount": 0
    },
    {
      "id": "3c7e14e9-2393-4ce8-8a02-584836d49c29",
      "monitorId": "69b6b9ba-20c9-4ffb-beef-263c07063222",
      "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
      "runInitiationDateTime": "2024-12-12T06:00:21.6023183Z",
      "runCompletionDateTime": "2024-12-12T06:00:21.6023183Z",
      "runStatus": "successful",
      "driftsCount": 3
    },
    {
      "id": "17fc9f1c-771a-4ec4-9894-48ab2d89dd2c",
      "monitorId": "69b6b9ba-20c9-4ffb-beef-263c07063222",
      "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
      "runInitiationDateTime": "2024-12-12T03:00:07.9629206Z",
      "runCompletionDateTime": "2024-12-12T03:00:07.9629206Z",
      "runStatus": "failed",
      "driftsCount": 0
    },
    {
      "id": "ebffda35-90c8-4157-a757-cecbc0df968c",
      "monitorId": "69b6b9ba-20c9-4ffb-beef-263c07063222",
      "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
      "runInitiationDateTime": "2024-12-12T00:00:15.2616957Z",
      "runCompletionDateTime": "2024-12-12T00:00:15.2616957Z",
      "runStatus": "failed",
      "driftsCount": 0
    },
    {
      "id": "962827e5-b82a-4d50-b343-be268db625c9",
      "monitorId": "69b6b9ba-20c9-4ffb-beef-263c07063222",
      "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
      "runInitiationDateTime": "2024-12-11T21:00:11.4750106Z",
      "runCompletionDateTime": "2024-12-11T21:00:11.4750106Z",
      "runStatus": "failed",
      "driftsCount": 0
    },
    {
      "id": "2196ccc4-85d7-4427-ab81-8a8a46422d0d",
      "monitorId": "69b6b9ba-20c9-4ffb-beef-263c07063222",
      "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
      "runInitiationDateTime": "2024-12-11T18:00:38.3070963Z",
      "runCompletionDateTime": "2024-12-11T18:00:38.3070963Z",
      "runStatus": "successful",
      "driftsCount": 3
    },
    {
      "id": "89acf0d8-3f6e-454d-b786-ef8370075d4a",
      "monitorId": "69b6b9ba-20c9-4ffb-beef-263c07063222",
      "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
      "runInitiationDateTime": "2024-12-11T15:05:18.4677889Z",
      "runCompletionDateTime": "2024-12-11T15:05:18.4677889Z",
      "runStatus": "failed",
      "driftsCount": 0
    },
    {
      "id": "80e9906d-417b-4f79-a1b3-532260d090bf",
      "monitorId": "69b6b9ba-20c9-4ffb-beef-263c07063222",
      "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
      "runInitiationDateTime": "2024-12-11T12:18:34.1083345Z",
      "runCompletionDateTime": "2024-12-11T12:18:34.1083345Z",
      "runStatus": "successful",
      "driftsCount": 3
    }
  ]
}
```
