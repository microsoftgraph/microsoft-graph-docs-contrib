---
title: "List aiInsights- adhoc calls"
description: "Get the list of callAiInsight objects associated with adhoc calls."
author: "SukanyaDas"
ms.date: 08/01/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---
# List aiInsights for adhoc calls

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

### Get the list of [callAiInsight](../resources/callaiinsight.md) objects associated with an [ad hoc call](/graph/api/resources/adhoccall?view=graph-rest-beta)

> [!NOTE]
>
> * This API has license requirements. For more information, see [License requirements for Teams meeting AI insights APIs](/graph/teams-licenses#license-requirements-for-teams-meeting-ai-insights-apis).
> * This API works differently in one or more national clouds. For more information, see [Microsoft Teams API implementation differences in national clouds](/graph/teamwork-national-cloud-differences).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|CallAiInsights.Read.All|Not available.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|CallAiInsights.Read.All.|Not supported.|

## HTTP request

 ``` http
 GET /copilot/users/{userId}/adhocCalls/{callId}/aiInsights
 ```
## Optional query parameters

This method supports the `$select` and `$filter` [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [callAiInsight](../resources/callaiinsight.md) objects in the response body.

## Examples

### Request

The following example shows a request.

### [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_callaiinsight_adhoccalls",
  "sampleKeys": ["ba321e0d-79ee-478d-8e28-85a19507f456", "6e91b13b-5171-477f-8dc6-0fd43867f1de"]
}
-->
``` http
GET https://graph.microsoft.com/beta/copilot/users/ba321e0d-79ee-478d-8e28-85a19507f456/adhocCalls/6e91b13b-5171-477f-8dc6-0fd43867f1de/aiInsights
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callAiInsight)"
}
-->

``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#copilot/users('ba321e0d-79ee-478d-8e28-85a19507f456')/adhocCalls('6e91b13b-5171-477f-8dc6-0fd43867f1de')/aiInsights",
  "@odata.count": 1,
  "value": [
    {
      "id": "VjEj...",
      "callId": "6e91b13b-5171-477f-8dc6-0fd43867f1de",
      "contentCorrelationId": "bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3",
      "createdDateTime": "2024-05-27T08:17:10.7261294Z",
      "endDateTime": "2024-05-27T08:17:10.7261294Z"
    }
  ]
}
```