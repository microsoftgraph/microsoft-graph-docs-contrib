---
title: "alert: getAlertFrequencies"
description: "Get the frequency of alerts detected by Global Secure Access."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# alert: getAlertFrequencies

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns a collection containing count tables for all [alert](../resources/networkaccess-alert.md) severity type per day in Global Secure Access.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-alert-getalertfrequencies-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-alert-getalertfrequencies-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccessRoot/alerts/getAlertFrequencies(startDateTime={startDateTime},endDateTime={endDateTime})
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|Start of the period for aggregating alerts. Required.|
|endDateTime|DateTimeOffset|End of the period for aggregating alerts. Required.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.networkaccess.alertFrequencyPoint](../resources/networkaccess-alertfrequencypoint.md) collection in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "alertthis.getalertfrequencies"
}
-->
```http
GET https://graph.microsoft.com/beta/networkAccessRoot/alerts/getAlertFrequencies(startDateTime='2024-04-01T00:00:00Z',endDateTime='2024-04-21T23:59:59Z')
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.alertFrequencyPoint)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "microsoft.graph.networkaccess.alertFrequencyPoint",
      "date": "2024-04-01",
      "severity": "high",
      "alertCount": 5
    }
  ]
}
```
