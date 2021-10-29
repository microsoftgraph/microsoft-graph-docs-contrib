---
title: "Update emailAppUsageVersionsUserCounts"
description: "Update the properties of an emailAppUsageVersionsUserCounts object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update emailAppUsageVersionsUserCounts
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [emailAppUsageVersionsUserCounts](../resources/emailappusageversionsusercounts.md) object.

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
PATCH /emailAppUsageVersionsUserCounts
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
|outlook2016|Int64|**TODO: Add Description** Optional.|
|outlook2013|Int64|**TODO: Add Description** Optional.|
|outlook2010|Int64|**TODO: Add Description** Optional.|
|outlook2007|Int64|**TODO: Add Description** Optional.|
|undetermined|Int64|**TODO: Add Description** Optional.|
|reportPeriod|String|**TODO: Add Description** Optional.|
|outlookM365|Int64|**TODO: Add Description** Optional.|
|outlook2019|Int64|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [emailAppUsageVersionsUserCounts](../resources/emailappusageversionsusercounts.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_emailappusageversionsusercounts"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/emailAppUsageVersionsUserCounts
Content-Type: application/json
Content-length: 338

{
  "@odata.type": "#microsoft.graph.emailAppUsageVersionsUserCounts",
  "reportRefreshDate": "Date",
  "outlook2016": "Integer",
  "outlook2013": "Integer",
  "outlook2010": "Integer",
  "outlook2007": "Integer",
  "undetermined": "Integer",
  "reportPeriod": "String",
  "outlookM365": "Integer",
  "outlook2019": "Integer"
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
  "@odata.type": "#microsoft.graph.emailAppUsageVersionsUserCounts",
  "id": "86446bdc-6bdc-8644-dc6b-4486dc6b4486",
  "reportRefreshDate": "Date",
  "outlook2016": "Integer",
  "outlook2013": "Integer",
  "outlook2010": "Integer",
  "outlook2007": "Integer",
  "undetermined": "Integer",
  "reportPeriod": "String",
  "outlookM365": "Integer",
  "outlook2019": "Integer"
}
```

