---
title: "deviceAndAppManagementDeploymentTopologyDefinition resource type"
description: "A class containing the properties used for deployment plan topology definition configuration."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementDeploymentTopologyDefinition resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties used for deployment plan topology definition configuration.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|topologyDisplayName|String|The display name of the deployment plan topology.|
|topologyOrder|Int32|The order in which this topology should be processed relative to other topologies.|
|topologyActivationCriteria|[deviceAndAppManagementRingActivationCriteria](../resources/intune-gntgraphservice-deviceandappmanagementringactivationcriteria.md)|The criteria that must be met for current deployment plan topology activation.|
|assignmentConfigurations|[deviceAndAppManagementDeploymentTopologyAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementdeploymenttopologyassignmentconfiguration.md) collection|The collection of assignment configurations associated with this deployment plan topology.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentTopologyDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentTopologyDefinition",
  "topologyDisplayName": "String",
  "topologyOrder": 1024,
  "topologyActivationCriteria": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementRingActivationDateTimeCriteria",
    "startDateTime": "String (timestamp)"
  },
  "assignmentConfigurations": [
    {
      "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentTopologyAssignmentConfiguration",
      "target": {
        "@odata.type": "microsoft.graph.organizationalUnitAssignmentTarget",
        "deviceAndAppManagementAssignmentFilterId": "String",
        "deviceAndAppManagementAssignmentFilterType": "String",
        "organizationalUnitId": "String",
        "assignmentConflictSetting": {
          "@odata.type": "microsoft.graph.organizationalUnitAssignmentConflictSetting",
          "assignmentOverride": "String",
          "versionNumber": 1024
        }
      },
      "operation": "String"
    }
  ]
}
```