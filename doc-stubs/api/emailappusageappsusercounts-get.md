---
title: "Get emailAppUsageAppsUserCounts"
description: "Read the properties and relationships of an emailAppUsageAppsUserCounts object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get emailAppUsageAppsUserCounts
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [emailAppUsageAppsUserCounts](../resources/emailappusageappsusercounts.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /emailAppUsageAppsUserCounts
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [emailAppUsageAppsUserCounts](../resources/emailappusageappsusercounts.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_emailappusageappsusercounts"
}
-->
``` http
GET https://graph.microsoft.com/beta/emailAppUsageAppsUserCounts
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.emailAppUsageAppsUserCounts"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.emailAppUsageAppsUserCounts",
    "id": "c5c2ea4e-ea4e-c5c2-4eea-c2c54eeac2c5",
    "reportRefreshDate": "Date",
    "mailForMac": "Integer",
    "outlookForMac": "Integer",
    "outlookForWindows": "Integer",
    "outlookForMobile": "Integer",
    "otherForMobile": "Integer",
    "outlookForWeb": "Integer",
    "pop3App": "Integer",
    "imap4App": "Integer",
    "smtpApp": "Integer",
    "reportPeriod": "String"
  }
}
```

