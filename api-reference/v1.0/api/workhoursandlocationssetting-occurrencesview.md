---
title: "workHoursAndLocationsSetting: occurrencesView"
description: "Get work plan occurrences from your own work plan within a specified date range."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 12/10/2025
---

# workHoursAndLocationsSetting: occurrencesView

Namespace: microsoft.graph

Get [work plan occurrences](../resources/workplanoccurrence.md) from your own work plan within a specified date range. This function requires the **startDateTime** and **endDateTime** parameters.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workhoursandlocationssetting_occurrencesview" } -->
[!INCLUDE [permissions-table](../includes/permissions/workhoursandlocationssetting-occurrencesview-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
} -->

```http
GET /me/settings/workHoursAndLocations/occurrencesView(startDateTime='{startDateTime}',endDateTime='{endDateTime}')
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

When using the `/users/{id}` endpoint, the ID must be your own user ID.

```http
GET /users/{id | userPrincipalName}/settings/workHoursAndLocations/occurrencesView(startDateTime='{startDateTime}',endDateTime='{endDateTime}')
```

## Function parameters

In the request URL, provide the following required function parameters with values.

| Parameter | Type | Description |
|:----------|:-----|:------------|
| endDateTime | String | The end date and time of the time range, represented in ISO 8601 format. |
| startDateTime | String | The start date and time of the time range, represented in ISO 8601 format. |

## Optional query parameters

This method supports the `$select` and `$top` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name | Description |
|:-----|:------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [workPlanOccurrence](../resources/workplanoccurrence.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "workhoursandlocationssetting_occurrencesview"
} -->
```http
GET https://graph.microsoft.com/v1.0/me/settings/workHoursAndLocations/occurrencesView(startDateTime='2025-12-01T00:00:00Z',endDateTime='2025-12-01T23:59:59Z')
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.workPlanOccurrence)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.workPlanOccurrence)",
  "value": [
    {
      "id": "AAkBOQAICN4wbJIpwAAuAAAAAB2EAxGqZhHNm8gAqgAvxFoNAOtpUxZW-2ZHr9tjSZTO0jMAA2pPCT8AABA=",
      "recurrenceId": "AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0A62lTFlb-Zkev22NJlM7SMwADak8JPwAA",
      "workLocationType": "remote",
      "start": {
        "dateTime": "2025-12-01T09:00:00.0000000",
        "timeZone": "Pacific Standard Time"
      },
      "end": {
        "dateTime": "2025-12-01T18:00:00.0000000",
        "timeZone": "Pacific Standard Time"
      }
    }
  ]
}
```
