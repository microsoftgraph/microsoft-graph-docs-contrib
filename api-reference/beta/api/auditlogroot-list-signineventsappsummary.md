---
title: "List signInEventsAppActivity objects"
description: "Get a list of applications and the number of signin events that have occurred in the past 30 days."
author: "cumansfi"
ms.date: 08/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# List signInEventsAppActivity objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of applications and their number of sign in events in the past 30 days as defined in the [signInEventsAppActivity](../resources/signineventsappactivity.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "auditlogroot-list-signineventsappsummary-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/auditlogroot-list-signineventsappsummary-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /auditLogs/signInEventsAppSummary
```

## Optional query parameters

This method supports the `$filter` [OData query parameter](/graph/query-parameters) to help customize the response. You can apply `$filter` on one or more of the following properties of the [signInEventsAppActivity](../resources/signineventsappactivity.md) resource. You may also apply the `$top` query parameter to limit the number of results returned to a specific number. The default and max `$top` parameter is 1000 records. 

| Property          | Description                                                                                                                     | Example                                                                   |
|:------------------|:--------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------|
| appId      | Filter for only sign in events summary only for a specific application id. Supported filter operators: `eq`.| `/auditLogs/signInEventsAppSummary?$filter=appId eq 'fc7ac587-0824-44b4-9ad5-b51827bafa20'`           |
| signInCount   | Filter for only applications with a specific sign in count window. Supported filter operators are: `gt`.                                              | `/auditLogs/signInEventsAppSummary?$filter=signInCount gt 10`        |

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [signInEventsAppActivity](../resources/signineventsappactivity.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_signineventsappactivity"
}
-->
``` http
GET https://graph.microsoft.com/beta/auditLogs/signInEventsAppSummary
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.signInEventsAppActivity"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "appId": "b731067b-b2ea-4705-a2d3-3da34cd3a3a7",
      "signInCount": 214378,
      "tenantId": "44bd0483-ed88-4fd7-899a-99f8467ac907"
    },
    {
      "appId": "48199228-32b8-45e1-9239-86137b3bf3eb",
      "signInCount": 30484,
      "tenantId": "44bd0483-ed88-4fd7-899a-99f8467ac907"
    },
    {
      "appId": "fe13e228-9ef6-4e9d-9277-1ef6206bc500",
      "signInCount": 17227,
      "tenantId": "44bd0483-ed88-4fd7-899a-99f8467ac907"
    },
    {
      "appId": "fc7ac587-0824-44b4-9ad5-b51827bafa20",
      "signInCount": 10234,
      "tenantId": "44bd0483-ed88-4fd7-899a-99f8467ac907"
    }
  ]
}
```

