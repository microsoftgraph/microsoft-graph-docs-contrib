---
title: "deviceAndAppManagementDeploymentTopologyDefinition resource type"
description: "Represents a deprecated deployment plan ring topology."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
toc.title: "deviceAndAppManagementDeploymentTopologyDefinition resource type (deprecated)"
ROBOTS: NOINDEX
---

# deviceAndAppManagementDeploymentTopologyDefinition resource type (deprecated)

Namespace: microsoft.graph

> [!CAUTION]
> This type is deprecated. Use [deviceAndAppManagementDeploymentRingTemplate](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentringtemplate.md) instead. Removal from beta was scheduled for June 20, 2026. This topic retains the legacy definition for migration guidance.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a deprecated deployment plan ring topology.

Use the **ringTemplates** property of [deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md) instead.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignmentConfigurations|[deviceAndAppManagementDeploymentTopologyAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementdeploymenttopologyassignmentconfiguration.md) collection|The assignment target change operations associated with this topology.|
|topologyActivationCriteria|[deviceAndAppManagementRingActivationCriteria](../resources/intune-gntgraphservice-deviceandappmanagementringactivationcriteria.md)|The activation criteria for this topology. Use a relative duration.|
|topologyDisplayName|String|The display name of the topology. Maximum length is 256 characters.|
|topologyOrder|Int32|The processing order relative to other topologies, from 1 through 100.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentTopologyDefinition"
} -->
```json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentTopologyDefinition",
  "topologyDisplayName": "String",
  "topologyOrder": "Int32",
  "topologyActivationCriteria": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementRingActivationCriteria"
  },
  "assignmentConfigurations": [
    {
      "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentTopologyAssignmentConfiguration"
    }
  ]
}
```
