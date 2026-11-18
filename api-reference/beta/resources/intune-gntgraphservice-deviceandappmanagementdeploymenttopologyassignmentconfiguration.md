---
title: "deviceAndAppManagementDeploymentTopologyAssignmentConfiguration resource type"
description: "Represents a deprecated assignment target change operation for a topology."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
toc.title: "deviceAndAppManagementDeploymentTopologyAssignmentConfiguration resource type (deprecated)"
ROBOTS: NOINDEX
---

# deviceAndAppManagementDeploymentTopologyAssignmentConfiguration resource type (deprecated)

Namespace: microsoft.graph

> [!CAUTION]
> This type is deprecated. Use [deviceAndAppManagementRingTemplateAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementringtemplateassignmentconfiguration.md) instead. Removal from beta was scheduled for June 20, 2026. This topic retains the legacy definition for migration guidance.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a deprecated assignment target change operation for a topology.

Used by the legacy **assignmentConfigurations** property of [deviceAndAppManagementDeploymentTopologyDefinition](../resources/intune-gntgraphservice-deviceandappmanagementdeploymenttopologydefinition.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|operation|[deviceAndAppManagementAssignmentOperationType](../resources/intune-gntgraphservice-deviceandappmanagementassignmentoperationtype.md)|The assignment operation. The possible values are: `add`, `unknownFutureValue`.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The group target and optional assignment filter configured by the administrator.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentTopologyAssignmentConfiguration"
} -->
```json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentTopologyAssignmentConfiguration",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
  },
  "operation": "String"
}
```
