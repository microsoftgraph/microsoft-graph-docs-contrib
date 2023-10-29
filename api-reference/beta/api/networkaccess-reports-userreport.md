---
title: "reports: userReport"
description: "Provide a report of all users with network traffic that was captured by Global Secure Access."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# reports: userReport
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provide a report of all users with network traffic that was captured by Global Secure Access.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.Read.All, NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccessRoot/reports/userReport
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|Timestamp that indicates the starting date and time for summarizing data within the specified report.|
|endDateTime|DateTimeOffset|Timestamp that indicates the ending date and time for summarizing data within the specified report.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.networkaccess.user](../resources/networkaccess-user.md) collection in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "reportsthis.userreport"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkaccess/reports/userReport(startDateTime=2023-08-20T12:12:59.076Z, endDateTime=2023-08-21T12:12:59.076Z) 
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.user)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.networkaccess.user)",
  "value":[
     {
        "displayName":"John Doe",
        "userPrincipalName":"johndoe@contosonow.com",
        "userType":"member",
        "userId":"253ba0d4-b3b0-4825-8cd8-0f5338fade6a",
        "trafficType":"microsoft365",
        "lastAccessDateTime":"2023-08-09T13:20:04Z"
     },
     {
        "displayName":"John Doe",
        "userPrincipalName":"johndoe@contosonow.com",
        "userType":"member",
        "userId":"253ba0d4-b3b0-4825-8cd8-0f5338fade6a",
        "trafficType":"private",
        "lastAccessDateTime":"2023-08-09T13:20:04Z"
     },
     {
        "displayName":"John Doe",
        "userPrincipalName":"johndoe@contosonow.com",
        "userType":"member",
        "userId":"253ba0d4-b3b0-4825-8cd8-0f5338fade6a",
        "trafficType":"internet",
        "lastAccessDateTime":"2023-08-09T13:20:04Z"
     }
  ]
}
```

