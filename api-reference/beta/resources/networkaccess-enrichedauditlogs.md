---
title: "enrichedAuditLogs resource type"
description: "An overview of the enriched audit logs workloads within the tenant is provided. It comprises three partners: SharePoint, Teams, and Exchange. Each partner represents a specific workload that generates audit logs."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# enrichedAuditLogs resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An overview of the enriched audit logs workloads within the tenant is provided. It comprises three partners: SharePoint, Teams, and Exchange. Each partner represents a specific workload that generates audit logs.

For more information about enriched audit logs, see [How to use the Global Secure Access enriched Microsoft 365 logs](/azure/global-secure-access/how-to-view-enriched-logs).


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get enrichedAuditLogs](../api/networkaccess-settings-list-enrichedauditlogs.md)|[microsoft.graph.networkaccess.enrichedAuditLogs](../resources/networkaccess-enrichedauditlogs.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.enrichedAuditLogs](../resources/networkaccess-enrichedauditlogs.md) object.|
|[Update enrichedAuditLogs](../api/networkaccess-enrichedauditlogs-update.md)|[microsoft.graph.networkaccess.enrichedAuditLogs](../resources/networkaccess-enrichedauditlogs.md)|Update the properties of a [microsoft.graph.networkaccess.enrichedAuditLogs](../resources/networkaccess-enrichedauditlogs.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|exchange|[microsoft.graph.networkaccess.enrichedAuditLogsSettings](../resources/networkaccess-enrichedauditlogssettings.md)|Exchange Online enriched audit logs settings.|
|id|String|Id Inherited from [microsoft.graph.entity](../resources/entity.md).|
|sharepoint|[microsoft.graph.networkaccess.enrichedAuditLogsSettings](../resources/networkaccess-enrichedauditlogssettings.md)|SharePoint Online enriched audit logs settings.|
|teams|[microsoft.graph.networkaccess.enrichedAuditLogsSettings](../resources/networkaccess-enrichedauditlogssettings.md)|Teams enriched audit logs settings.|

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

