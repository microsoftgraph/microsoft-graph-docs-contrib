---
title: "Update emailAppUsageUserDetail"
description: "Update the properties of an emailAppUsageUserDetail object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update emailAppUsageUserDetail
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [emailAppUsageUserDetail](../resources/emailappusageuserdetail.md) object.

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
PATCH /emailAppUsageUserDetail
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
|userPrincipalName|String|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Optional.|
|isDeleted|Boolean|**TODO: Add Description** Optional.|
|deletedDate|Date|**TODO: Add Description** Optional.|
|lastActivityDate|Date|**TODO: Add Description** Optional.|
|mailForMac|String collection|**TODO: Add Description** Optional.|
|outlookForMac|String collection|**TODO: Add Description** Optional.|
|outlookForWindows|String collection|**TODO: Add Description** Optional.|
|outlookForMobile|String collection|**TODO: Add Description** Optional.|
|otherForMobile|String collection|**TODO: Add Description** Optional.|
|outlookForWeb|String collection|**TODO: Add Description** Optional.|
|pop3App|String collection|**TODO: Add Description** Optional.|
|imap4App|String collection|**TODO: Add Description** Optional.|
|smtpApp|String collection|**TODO: Add Description** Optional.|
|reportPeriod|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [emailAppUsageUserDetail](../resources/emailappusageuserdetail.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_emailappusageuserdetail"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/emailAppUsageUserDetail
Content-Type: application/json
Content-length: 638

{
  "@odata.type": "#microsoft.graph.emailAppUsageUserDetail",
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
```

