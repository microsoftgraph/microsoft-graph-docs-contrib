---
title: "Add yearTimePeriodDefinition"
description: "Add year by posting to the year collection."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Add yearTimePeriodDefinition
Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add year by posting to the year collection.

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
POST /external/industryData/inboundFlows/{inboundFlowId}/year/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) object.

You can specify the following properties when creating a **yearTimePeriodDefinition**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the year. Required.|
|endDate|Date|The last day of the year. ISO 8601 date. Required.|
|startDate|Date|The first day of the year. ISO 8601 date. Required.|
|year|[microsoft.graph.industryData.yearReferenceValue](../resources/industrydata-yearreferencevalue.md)|Pointer to a year entry in the referenceDefinition collection. Required.|



## Response

If successful, this method returns a `204 No Content` response code and a [yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_yeartimeperioddefinition_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/external/industryData/inboundFlows/{inboundFlowId}/year/$ref
Content-Type: application/json
Content-length: 242

{
  "@odata.type": "#microsoft.graph.industryData.yearTimePeriodDefinition",
  "displayName": "String",
  "endDate": "Date",
  "startDate": "Date",
  "year": {
    "@odata.type": "microsoft.graph.industryData.yearReferenceValue"
  }
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.yearTimePeriodDefinition"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.yearTimePeriodDefinition",
  "displayName": "String",
  "endDate": "Date",
  "startDate": "Date",
  "year": {
    "@odata.type": "microsoft.graph.industryData.yearReferenceValue"
  }
}
```

