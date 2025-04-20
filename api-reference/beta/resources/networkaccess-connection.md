---
title: "connection resource type"
description: "Represents a connection which consists of multiple transactions sharing single Flow Correlation Id."
author: "moti-ba"
ms.date: 04/20/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# connection resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A connection represents multiple transactions occurring and sharing single Flow Correlation Id. Provides information about network connections including source/destination details, traffic statistics, and connection status.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-logs-list-connections.md)|[microsoft.graph.networkaccess.connection](networkaccess-connection.md) collection|Get a list of the connection objects and their properties.|
|[Get](../api/networkaccess-connection-get.md)|[microsoft.graph.networkaccess.connection](networkaccess-connection.md)|Read the properties and relationships of a connection object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|agentVersion|String|The client version of the connection.|
|applicationSnapshot|[microsoft.graph.networkaccess.applicationSnapshot](networkaccess-applicationsnapshot.md)|Destination Application ID accessed in Azure AD during the connection.|
|createdDateTime|DateTimeOffset|The time the connection was created.|
|destinationFqdn|String|The destination FQDN of the connection.|
|destinationIp|String|The destination IP of the connection.|
|destinationPort|Int32|The destination port of the connection.|
|deviceCategory|[microsoft.graph.networkaccess.deviceCategory](enums-networkaccess.md#devicecategory-values)|The category of the device. The possible values are: `client`, `branch`, `unknownFutureValue`, `remoteNetwork`.|
|deviceId|String|The Device ID.|
|deviceOperatingSystem|String|The device operating system type.|
|deviceOperatingSystemVersion|String|The device operating system version.|
|endDateTime|DateTimeOffset|The time the connection was ended.|
|id|String|The unique identifier for the connection. Inherited from [microsoft.graph.entity](entity.md).|
|initiatingProcessName|String|The process initiating the traffic connection.|
|lastUpdateDateTime|DateTimeOffset|The last update time that the connection was updated.|
|networkProtocol|[microsoft.graph.networkaccess.networkingProtocol](enums-networkaccess.md#networkingprotocol-values)|The network protocol of the connection.|
|popProcessingRegion|String|The Point-of-Presence processing region of the traffic.|
|privateAccessDetails|[microsoft.graph.networkaccess.privateAccessDetails](networkaccess-privateaccessdetails.md)|Private access details.|
|receivedBytes|Int64|Accumulative bytes received.|
|sentBytes|Int64|Accumulative bytes sent.|
|sourceIp|String|The source IP of the connection.|
|sourcePort|Int32|The source port of the connection.|
|status|[microsoft.graph.networkaccess.connectionStatus](enums-networkaccess.md#connectionstatus-values)|Status of the connection. The possible values are: `open`, `active`, `closed`, `unknownFutureValue`.|
|tenantId|String|The tenant ID of the connection.|
|trafficType|[microsoft.graph.networkaccess.trafficType](enums-networkaccess.md#traffictype-values)|The type of traffic. The possible values are: `internet`, `private`, `microsoft365`, `all`, `unknownFutureValue`, `microsoft`.|
|transactionBlockCount|Int32|The count of blocked transactions belong to connection.|
|transactionCount|Int32|The count of transactions belong to connection.|
|transportProtocol|[microsoft.graph.networkaccess.networkingProtocol](enums-networkaccess.md#networkingprotocol-values)|The transport protocol of the connection.|
|userId|String|The User ID.|
|userPrincipalName|String|The principal name of the user.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.connection",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.networkaccess.connection",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "tenantId": "String",
  "lastUpdateDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "status": "String",
  "trafficType": "String",
  "transactionCount": "Integer",
  "transactionBlockCount": "Integer",
  "sentBytes": "Integer",
  "receivedBytes": "Integer",
  "destinationIp": "String",
  "destinationPort": "Integer",
  "destinationFqdn": "String",
  "userId": "String",
  "sourceIp": "String",
  "sourcePort": "Integer",
  "initiatingProcessName": "String",
  "deviceId": "String",
  "deviceOperatingSystem": "String",
  "deviceOperatingSystemVersion": "String",
  "agentVersion": "String",
  "applicationSnapshot": {
    "@odata.type": "microsoft.graph.networkaccess.applicationSnapshot"
  },
  "privateAccessDetails": {
    "@odata.type": "microsoft.graph.networkaccess.privateAccessDetails"
  },
  "deviceCategory": "String",
  "userPrincipalName": "String",
  "transportProtocol": "String",
  "networkProtocol": "String",
  "popProcessingRegion": "String"
}
```