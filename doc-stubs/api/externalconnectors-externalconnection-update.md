---
title: "Update externalConnection"
description: "Update the properties of an externalConnection object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update externalConnection
Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [externalConnection](../resources/externalconnectors-externalconnection.md) object.

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
PATCH /connections/{connectionsId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [externalConnection](../resources/externalconnectors-externalconnection.md) object.

The following table shows the properties that are required when you update the [externalConnection](../resources/externalconnectors-externalconnection.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/externalconnectors-entity.md)|
|activitySettings|[microsoft.graph.externalConnectors.activitySettings](../resources/externalconnectors-activitysettings.md)|**TODO: Add Description**|
|complianceSettings|[microsoft.graph.externalConnectors.complianceSettings](../resources/externalconnectors-compliancesettings.md)|**TODO: Add Description**|
|configuration|[microsoft.graph.externalConnectors.configuration](../resources/externalconnectors-configuration.md)|**TODO: Add Description**|
|connectorId|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|ingestedItemsCount|Int64|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|searchSettings|[microsoft.graph.externalConnectors.searchSettings](../resources/externalconnectors-searchsettings.md)|**TODO: Add Description**|
|state|connectionState|**TODO: Add Description**. The possible values are: `draft`, `ready`, `obsolete`, `limitExceeded`, `unknownFutureValue`.|



## Response

If successful, this method returns a `200 OK` response code and an updated [externalConnection](../resources/externalconnectors-externalconnection.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_externalconnection"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/connections/{connectionsId}
Content-Type: application/json
Content-length: 628

{
  "@odata.type": "#microsoft.graph.externalConnectors.externalConnection",
  "activitySettings": {
    "@odata.type": "microsoft.graph.externalConnectors.activitySettings"
  },
  "complianceSettings": {
    "@odata.type": "microsoft.graph.externalConnectors.complianceSettings"
  },
  "configuration": {
    "@odata.type": "microsoft.graph.externalConnectors.configuration"
  },
  "connectorId": "String",
  "description": "String",
  "ingestedItemsCount": "Integer",
  "name": "String",
  "searchSettings": {
    "@odata.type": "microsoft.graph.externalConnectors.searchSettings"
  },
  "state": "String"
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
  "@odata.type": "#microsoft.graph.externalConnectors.externalConnection",
  "id": "d36a1cbe-1cbe-d36a-be1c-6ad3be1c6ad3",
  "activitySettings": {
    "@odata.type": "microsoft.graph.externalConnectors.activitySettings"
  },
  "complianceSettings": {
    "@odata.type": "microsoft.graph.externalConnectors.complianceSettings"
  },
  "configuration": {
    "@odata.type": "microsoft.graph.externalConnectors.configuration"
  },
  "connectorId": "String",
  "description": "String",
  "ingestedItemsCount": "Integer",
  "name": "String",
  "searchSettings": {
    "@odata.type": "microsoft.graph.externalConnectors.searchSettings"
  },
  "state": "String"
}
```

