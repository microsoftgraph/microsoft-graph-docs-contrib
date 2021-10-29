---
title: "Update teamsDeviceUsageUserDetail"
description: "Update the properties of a teamsDeviceUsageUserDetail object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update teamsDeviceUsageUserDetail
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [teamsDeviceUsageUserDetail](../resources/teamsdeviceusageuserdetail.md) object.

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
PATCH /teamsDeviceUsageUserDetail
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
|isLicensed|Boolean|**TODO: Add Description** Optional.|
|lastActivityDate|Date|**TODO: Add Description** Optional.|
|isDeleted|Boolean|**TODO: Add Description** Optional.|
|deletedDate|Date|**TODO: Add Description** Optional.|
|usedWeb|Boolean|**TODO: Add Description** Optional.|
|usedWindowsPhone|Boolean|**TODO: Add Description** Optional.|
|usediOS|Boolean|**TODO: Add Description** Optional.|
|usedMac|Boolean|**TODO: Add Description** Optional.|
|usedAndroidPhone|Boolean|**TODO: Add Description** Optional.|
|usedWindows|Boolean|**TODO: Add Description** Optional.|
|usedChromeOS|Boolean|**TODO: Add Description** Optional.|
|usedLinux|Boolean|**TODO: Add Description** Optional.|
|reportPeriod|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [teamsDeviceUsageUserDetail](../resources/teamsdeviceusageuserdetail.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_teamsdeviceusageuserdetail"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/teamsDeviceUsageUserDetail
Content-Type: application/json
Content-length: 504

{
  "@odata.type": "#microsoft.graph.teamsDeviceUsageUserDetail",
  "reportRefreshDate": "Date",
  "userPrincipalName": "String",
  "isLicensed": "Boolean",
  "lastActivityDate": "Date",
  "isDeleted": "Boolean",
  "deletedDate": "Date",
  "usedWeb": "Boolean",
  "usedWindowsPhone": "Boolean",
  "usediOS": "Boolean",
  "usedMac": "Boolean",
  "usedAndroidPhone": "Boolean",
  "usedWindows": "Boolean",
  "usedChromeOS": "Boolean",
  "usedLinux": "Boolean",
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
  "@odata.type": "#microsoft.graph.teamsDeviceUsageUserDetail",
  "id": "dc2ab1fe-b1fe-dc2a-feb1-2adcfeb12adc",
  "reportRefreshDate": "Date",
  "userPrincipalName": "String",
  "isLicensed": "Boolean",
  "lastActivityDate": "Date",
  "isDeleted": "Boolean",
  "deletedDate": "Date",
  "usedWeb": "Boolean",
  "usedWindowsPhone": "Boolean",
  "usediOS": "Boolean",
  "usedMac": "Boolean",
  "usedAndroidPhone": "Boolean",
  "usedWindows": "Boolean",
  "usedChromeOS": "Boolean",
  "usedLinux": "Boolean",
  "reportPeriod": "String"
}
```

