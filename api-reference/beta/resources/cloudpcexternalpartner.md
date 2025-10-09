---
title: "cloudPcExternalPartner resource type"
description: "Represents an external partner on Cloud PC."
author: "XunZhangSZ"
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
|connectionStatus|[cloudPcExternalPartnerStatus](#cloudpcexternalpartnerstatus-values)|The status of external partner connection. Possible values are `notAvailable`, `available`, `healthy`, `unhealthy`, and `unknownFutureValue`. Default value is `available`. Read-only.|
|enableConnection|Boolean|Enable or disable the connection to an external partner. If `true`, an external partner API accepts incoming calls from external partners. Required. Supports `$filter` (`eq`).|
|id|String|The unique identifier for the Cloud PC external partner entity record. Automatically generated when created. Read-only. |
|lastSyncDateTime|DateTimeOffset|Last data sync time for this external partner. The timeStamp type represents date and time information in ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 looks like this: '2014-01-01T00:00:00Z'.|
|partnerId|String|The partner identifier used to identify the external partner. When the Cloud PC service is ready to integrate with a new external partner, it generates a GUID to represent this partner. The Cloud PC service provides this partner ID to the partner, which can then use it to call this Microsoft Graph API and external partner APIs. Read-only.|
|statusDetails|String|Status details message. Read-only.|

### cloudPcExternalPartnerStatus values 
|Member|Description|
|:---|:---|
|notAvailable|The connection isn't established or the customer disabled the connection.|
|available|The connection is established, but no heartbeat received yet.|
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
