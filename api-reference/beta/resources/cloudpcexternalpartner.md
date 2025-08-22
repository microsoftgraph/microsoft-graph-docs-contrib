---
title: "cloudPcExternalPartner resource type"
description: "Represents an external partner on Cloud PC."
author: "Xun Zhang"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 08/22/2025
---

# cloudPcExternalPartner resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an external partner on Cloud PC.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualendpoint-list-externalpartners.md)|[cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) collection|Get a list of the [cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) objects and their properties.|
|[Create](../api/virtualendpoint-post-externalpartners.md)|[cloudPcExternalPartner](../resources/cloudpcexternalpartner.md)|Create a new [cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) object.|
|[Get](../api/cloudpcexternalpartner-get.md)|[cloudPcExternalPartner](../resources/cloudpcexternalpartner.md)|Read the properties and relationships of a [cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) object.|
|[Update](../api/cloudpcexternalpartner-update.md)|[cloudPcExternalPartner](../resources/cloudpcexternalpartner.md)|Update the properties of a [cloudPcExternalPartner](../resources/cloudpcexternalpartner.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique id is for the Cloud PC external partner entity record. Automatically generated when created. Read-only. |
|partnerId|String|The partner id is used to identify the external partner. When cloud PC service are ready to integrate with a new external partner, cloud PC service will generate a GUID to represent this partner. Cloud PC service will provide this partner id to partner, then partner can use this id to call this Graph API and external partner API, Cloud PC service can identity the partner by this Id. Read-only.|
|enableConnection|Boolean|Enable or disable the connection to an external partner. If `true`, an external partner API will accept incoming calls from external partners. Required. Supports `$filter` (`eq`).|
|lastSyncDateTime|DateTimeOffset|Last data sync time for this external partner. The Timestamp type represents the date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 looks like this: '2014-01-01T00:00:00Z'.|
|connectionStatus|[cloudPcExternalPartnerStatus](#cloudpcexternalpartnerstatus-values)|The status of external partner connection. Possible values include notAvailable, available, healthy, unhealthy. Default value is `available`. Read-only.|
|statusDetails|String|Status details message. Read-only.|

### cloudPcExternalPartnerStatus values 
|Member|Description|
|:---|:---|
|notAvailable|The connection hasn't been established or the customer disabled the connection.|
|available|The connection has been enabled, but no heartbeat received yet.|
|healthy|The connection is enabled and heartbeat is being received.|
|unhealthy|The connection is enabled and heartbeat isn't being received.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcExternalPartner",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcExternalPartner",
  "id": "String (identifier)",
  "partnerId": "String",
  "enableConnection": "Boolean",  
  "lastSyncDateTime": "String (timestamp)",
  "connectionStatus": "String",
  "statusDetails": "String"
}
```
