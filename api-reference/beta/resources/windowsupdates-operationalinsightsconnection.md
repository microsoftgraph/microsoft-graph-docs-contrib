---
title: "operationalInsightsConnection resource type"
description: "Represents a specialized resourceConnection that links a Log Analytics workspace to Windows Autopatch."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# operationalInsightsConnection resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specialized [resourceConnection](../resources/windowsupdates-resourceconnection.md) that links a Log Analytics workspace to Windows Autopatch.

Inherits from [resourceConnection](../resources/windowsupdates-resourceconnection.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/adminwindowsupdates-list-resourceconnections-operationalinsightsconnection.md)|[microsoft.graph.windowsUpdates.operationalInsightsConnection](../resources/windowsupdates-operationalinsightsconnection.md) collection|Get a list of the [operationalInsightsConnection](../resources/windowsupdates-operationalinsightsconnection.md) objects and their properties.|
|[Create](../api/adminwindowsupdates-post-resourceconnections-operationalinsightsconnection.md)|[microsoft.graph.windowsUpdates.operationalInsightsConnection](../resources/windowsupdates-operationalinsightsconnection.md)|Create a new [operationalInsightsConnection](../resources/windowsupdates-operationalinsightsconnection.md) object.|
|[Get](../api/windowsupdates-operationalinsightsconnection-get.md)|[microsoft.graph.windowsUpdates.operationalInsightsConnection](../resources/windowsupdates-operationalinsightsconnection.md)|Read the properties and relationships of an [operationalInsightsConnection](../resources/windowsupdates-operationalinsightsconnection.md) object.|
|[Delete operational insights connection](../api/windowsupdates-operationalinsightsconnection-delete.md)|None|Delete an [operationalInsightsConnection](../resources/windowsupdates-operationalinsightsconnection.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|azureResourceGroupName|String|The name of the Azure resource group that contains the Log Analytics workspace.|
|azureSubscriptionId|String|The Azure subscription ID that contains the Log Analytics workspace.|
|id|String|An identifier for the resource connection. Key. Not nullable. Read-only. Returned by default.|
|state|microsoft.graph.windowsUpdates.resourceConnectionState|The state of the connection. The possible values are: `connected`, `notAuthorized`, `notFound`, `unknownFutureValue`.|
|workspaceName|String|The name of the Log Analytics workspace.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.operationalInsightsConnection",
  "baseType": "microsoft.graph.windowsUpdates.resourceConnection",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.operationalInsightsConnection",
  "azureResourceGroupName": "String",  
  "azureSubscriptionId": "String",
  "id": "String (identifier)",
  "state": "String",
  "workspaceName": "String"
}
```

