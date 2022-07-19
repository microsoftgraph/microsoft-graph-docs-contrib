---
title: "Add sourceSystemDefinition"
description: "Add sourceSystem by posting to the sourceSystem collection."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Add sourceSystemDefinition
Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add sourceSystem by posting to the sourceSystem collection.

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
POST /external/industryData/dataConnectors/{industryDataConnectorId}/sourceSystem/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) object.

You can specify the following properties when creating a **sourceSystemDefinition**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the source system. Required.|
|userMatchingSettings|[microsoft.graph.industryData.userMatchingSetting](../resources/industrydata-usermatchingsetting.md) collection|A collection of user matching settings by roleGroup. Optional.|
|vendor|String|Name of the vendor who supplies the source system. Optional.|



## Response

If successful, this method returns a `204 No Content` response code and a [sourceSystemDefinition](../resources/industrydata-sourcesystemdefinition.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_sourcesystemdefinition_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/external/industryData/dataConnectors/{industryDataConnectorId}/sourceSystem/$ref
Content-Type: application/json
Content-length: 250

{
  "@odata.type": "#microsoft.graph.industryData.sourceSystemDefinition",
  "displayName": "String",
  "userMatchingSettings": [
    {
      "@odata.type": "microsoft.graph.industryData.userMatchingSetting"
    }
  ],
  "vendor": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.sourceSystemDefinition"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.sourceSystemDefinition",
  "displayName": "String",
  "userMatchingSettings": [
    {
      "@odata.type": "microsoft.graph.industryData.userMatchingSetting"
    }
  ],
  "vendor": "String"
}
```

