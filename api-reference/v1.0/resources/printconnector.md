---
title: printConnector resource type
description: Represents a print connector that has been registered by using a Universal Print subscription. The printConnector resource can be used to view connector status and update properties.
author: nilakhan
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printConnector resource type

Namespace: microsoft.graph

Represents a print connector that has been registered by using a Universal Print subscription. The printConnector resource can be used to view connector status and update properties.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List printConnectors](../api/printconnector-list.md)|[printConnector](../resources/printconnector.md) collection|Get a list of the [printConnector](../resources/printconnector.md) objects and their properties.|
|[Create printConnector](../api/printconnector-create.md)|[printConnector](../resources/printconnector.md)|Create a new [printConnector](../resources/printconnector.md) object.|
|[Get printConnector](../api/printconnector-get.md)|[printConnector](../resources/printconnector.md)|Read the properties and relationships of a [printConnector](../resources/printconnector.md) object.|
|[Update printConnector](../api/printconnector-update.md)|[printConnector](../resources/printconnector.md)|Update the properties of a [printConnector](../resources/printconnector.md) object.|
|[Delete printConnector](../api/printconnector-delete.md)|None|Deletes a [printConnector](../resources/printconnector.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String| Read-only.|
|displayName|String|The name of the connector.|
|fullyQualifiedDomainName|String|The connector machine's hostname.|
|operatingSystem|String|The connector machine's operating system version.|
|appVersion|String|The connector's version.|
|location|[printerLocation](printerlocation.md)|The physical and/or organizational location of the connector.|
|registeredDateTime|DateTimeOffset|The DateTimeOffset when the connector was registered.|
|registeredBy|[userIdentity](useridentity.md)|The user who registered the connector.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printConnector",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printConnector",
  "id": "String (identifier)",
  "displayName": "String",
  "fullyQualifiedDomainName": "String",
  "operatingSystem": "String",
  "appVersion": "String",
  "location": {
    "@odata.type": "microsoft.graph.printerLocation"
  },
  "registeredDateTime": "String (timestamp)"
}
```