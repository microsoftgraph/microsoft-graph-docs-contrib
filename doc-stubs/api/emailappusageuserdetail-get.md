---
title: "Get emailAppUsageUserDetail"
description: "Read the properties and relationships of an emailAppUsageUserDetail object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get emailAppUsageUserDetail
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [emailAppUsageUserDetail](../resources/emailappusageuserdetail.md) object.

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
GET /emailAppUsageUserDetail
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

If successful, this method returns a `200 OK` response code and an [emailAppUsageUserDetail](../resources/emailappusageuserdetail.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_emailappusageuserdetail"
}
-->
``` http
GET https://graph.microsoft.com/beta/emailAppUsageUserDetail
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.emailAppUsageUserDetail"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.emailAppUsageUserDetail",
    "id": "03fbc7ff-c7ff-03fb-ffc7-fb03ffc7fb03",
    "reportRefreshDate": "Date",
    "userPrincipalName": "String",
    "displayName": "String",
    "isDeleted": "Boolean",
    "deletedDate": "Date",
    "lastActivityDate": "Date",
    "mailForMac": [
      "String"
    ],
    "outlookForMac": [
      "String"
    ],
    "outlookForWindows": [
      "String"
    ],
    "outlookForMobile": [
      "String"
    ],
    "otherForMobile": [
      "String"
    ],
    "outlookForWeb": [
      "String"
    ],
    "pop3App": [
      "String"
    ],
    "imap4App": [
      "String"
    ],
    "smtpApp": [
      "String"
    ],
    "reportPeriod": "String"
  }
}
```

