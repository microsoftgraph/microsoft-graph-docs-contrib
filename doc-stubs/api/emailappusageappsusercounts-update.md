---
title: "Update emailAppUsageAppsUserCounts"
description: "Update the properties of an emailAppUsageAppsUserCounts object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update emailAppUsageAppsUserCounts
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [emailAppUsageAppsUserCounts](../resources/emailappusageappsusercounts.md) object.

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
PATCH /emailAppUsageAppsUserCounts
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|reportRefreshDate|Date|**TODO: Add Description** Optional.|
|mailForMac|Int64|**TODO: Add Description** Optional.|
|outlookForMac|Int64|**TODO: Add Description** Optional.|
|outlookForWindows|Int64|**TODO: Add Description** Optional.|
|outlookForMobile|Int64|**TODO: Add Description** Optional.|
|otherForMobile|Int64|**TODO: Add Description** Optional.|
|outlookForWeb|Int64|**TODO: Add Description** Optional.|
|pop3App|Int64|**TODO: Add Description** Optional.|
|imap4App|Int64|**TODO: Add Description** Optional.|
|smtpApp|Int64|**TODO: Add Description** Optional.|
|reportPeriod|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [emailAppUsageAppsUserCounts](../resources/emailappusageappsusercounts.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_emailappusageappsusercounts"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/emailAppUsageAppsUserCounts
Content-Type: application/json
Content-length: 397

{
  "@odata.type": "#microsoft.graph.emailAppUsageAppsUserCounts",
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
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
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
```

