---
title: "cloudPcExternalPartnerSetting resource type"
description: "Represents an external partner setting on Cloud PC."
author: "Shaowei-Dong"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcExternalPartnerSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an external partner setting on Cloud PC.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcExternalPartnerSettings](../api/virtualendpoint-list-externalpartnersettings.md)|[cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md) collection|Get a list of the [cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md) objects and their properties.|
|[Create cloudPcExternalPartnerSetting](../api/virtualendpoint-post-externalpartnersettings.md)|[cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md)|Create a new [cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md) object.|
|[Get cloudPcExternalPartnerSetting](../api/cloudpcexternalpartnersetting-get.md)|[cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md)|Read the properties and relationships of a [cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md) object.|
|[Update cloudPcExternalPartnerSetting](../api/cloudpcexternalpartnersetting-update.md)|[cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md)|Update the properties of a [cloudPcExternalPartnerSetting](../resources/cloudpcexternalpartnersetting.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|enableConnection|Boolean|Enable or disable the connection to an external partner. If `true`, an external partner API will accept incoming calls from external partners. Required. Supports `$filter` (`eq`).|
|id|String|The unique identifier for the Cloud PC external partner setting. Read-only. |
|lastSyncDateTime|DateTimeOffset|Last data sync time for this external partner. The Timestamp type represents the date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 looks like this: '2014-01-01T00:00:00Z'.|
|partnerId|String|The external partner ID.|
|status|[cloudPcExternalPartnerStatus](#cloudpcexternalpartnerstatus-values)|The status of the connection to the external partner. The possible values are: `notAvailable`, `available`, `healthy`, `unhealthy`, `unknownFutureValue`.|
|statusDetails|String|Status details message.|

### cloudPcExternalPartnerStatus values 
|Member|Description|
|:---|:---|
|notAvailable|The connection has not been established or the customer disabled the connection.|
|available|The connection has just been enabled, but no heartbeat received yet.|
|healthy|The connection is enabled and heartbeat is being received.|
|unhealthy|The connection is enabled and heartbeat is not being received.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcExternalPartnerSetting",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcExternalPartnerSetting",
  "enableConnection": "Boolean",  
  "id": "String (identifier)",
  "lastSyncDateTime": "String (timestamp)",
  "partnerId": "String",
  "status": "String",
  "statusDetails": "String"
}
```
