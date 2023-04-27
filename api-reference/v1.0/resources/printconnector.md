---
title: printConnector resource type
description: Represents a print connector that has been registered by using a Universal Print subscription. The printConnector resource can be used to view connector status and update properties.
author: nilakhan
ms.localizationpriority: medium
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printConnector resource type

Namespace: microsoft.graph

Represents a print connector that has been registered by using a Universal Print subscription. The printConnector resource can be used to view connector status and update properties.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [List connectors](../api/print-list-connectors.md) | [printConnector](printconnector.md) | Retrieve a list of print connectors. |
| [Get connector](../api/printconnector-get.md) | [printConnector](printconnector.md) | Read the properties and relationships of the connector object. |
| [Update connector](../api/printconnector-update.md) | [printConnector](printconnector.md) | Update the connector object. |
| [Delete connector](../api/printconnector-delete.md) | None | Unregister the connector from the Universal Print service. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appVersion|String|The connector's version.|
|displayName|String|The name of the connector.|
|fullyQualifiedDomainName|String|The connector machine's hostname.|
|id|String| Read-only.|
|location|[printerLocation](printerlocation.md)|The physical and/or organizational location of the connector.|
|operatingSystem|String|The connector machine's operating system version.|
|registeredBy|[userIdentity](useridentity.md)|The user who registered the connector.|
|registeredDateTime|DateTimeOffset|The DateTimeOffset when the connector was registered.|

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
