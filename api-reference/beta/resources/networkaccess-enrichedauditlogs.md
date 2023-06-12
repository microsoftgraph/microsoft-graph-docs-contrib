---
title: "enrichedAuditLogs resource type"
description: "This entity is designed to offer a comprehensive snapshot of our enhanced audit log workloads. At present, it encompasses three partners: SharePoint, Teams, and Exchange. Within each partner, the status indicates whether the corresponding feature is activated or deactivated"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# enrichedAuditLogs resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This entity is designed to offer a comprehensive snapshot of our enhanced audit log workloads. At present, it encompasses three partners: SharePoint, Teams, and Exchange. Within each partner, the status indicates whether the corresponding feature is activated or deactivated


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List enrichedAuditLogs](../api/networkaccess-settings-list-enrichedauditlogs.md)|[microsoft.graph.networkaccess.enrichedAuditLogs](../resources/networkaccess-enrichedauditlogs.md) collection|Get a list of the [microsoft.graph.networkaccess.enrichedAuditLogs](../resources/networkaccess-enrichedauditlogs.md) objects and their properties.|
|[Create enrichedAuditLogs](../api/networkaccess-settings-post-enrichedauditlogs.md)|[microsoft.graph.networkaccess.enrichedAuditLogs](../resources/networkaccess-enrichedauditlogs.md)|Create a new [microsoft.graph.networkaccess.enrichedAuditLogs](../resources/networkaccess-enrichedauditlogs.md) object.|
|[Get enrichedAuditLogs](../api/networkaccess-enrichedauditlogs-get.md)|[microsoft.graph.networkaccess.enrichedAuditLogs](../resources/networkaccess-enrichedauditlogs.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.enrichedAuditLogs](../resources/networkaccess-enrichedauditlogs.md) object.|
|[Update enrichedAuditLogs](../api/networkaccess-enrichedauditlogs-update.md)|[microsoft.graph.networkaccess.enrichedAuditLogs](../resources/networkaccess-enrichedauditlogs.md)|Update the properties of a [microsoft.graph.networkaccess.enrichedAuditLogs](../resources/networkaccess-enrichedauditlogs.md) object.|
|[Delete enrichedAuditLogs](../api/networkaccess-settings-delete-enrichedauditlogs.md)|None|Delete a [microsoft.graph.networkaccess.enrichedAuditLogs](../resources/networkaccess-enrichedauditlogs.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|exchange|[microsoft.graph.networkaccess.enrichedAuditLogsSettings](../resources/networkaccess-enrichedauditlogssettings.md)|Exchange Online enriched audit logs settings	|
|id|String|Id Inherited from [microsoft.graph.entity](../resources/entity.md).|
|sharepoint|[microsoft.graph.networkaccess.enrichedAuditLogsSettings](../resources/networkaccess-enrichedauditlogssettings.md)|SharePoint Online enriched audit logs settings|
|teams|[microsoft.graph.networkaccess.enrichedAuditLogsSettings](../resources/networkaccess-enrichedauditlogssettings.md)|Teams enriched audit logs settings|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.enrichedAuditLogs",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.enrichedAuditLogs",
  "id": "String (identifier)",
  "sharepoint": {
    "@odata.type": "microsoft.graph.networkaccess.enrichedAuditLogsSettings"
  },
  "teams": {
    "@odata.type": "microsoft.graph.networkaccess.enrichedAuditLogsSettings"
  },
  "exchange": {
    "@odata.type": "microsoft.graph.networkaccess.enrichedAuditLogsSettings"
  }
}
```

