---
title: "deviceAndAppManagementDeploymentRingTemplate resource type"
description: "Represents a reusable ring template in a deployment plan."
author: "jaiprakashmb"
ms.topic: reference
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 11/05/2026
---

# deviceAndAppManagementDeploymentRingTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a reusable ring template in a deployment plan.

Used by the **ringTemplates** property of [deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md). Ring templates aren't automatically copied when a deployment references a plan; the caller must materialize deployment rings and convert relative durations to absolute activation times.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activationCriteria|[deviceAndAppManagementRingActivationCriteria](../resources/intune-gntgraphservice-deviceandappmanagementringactivationcriteria.md)|The activation criteria for the ring template. Required. Use [deviceAndAppManagementRingActivationDurationCriteria](../resources/intune-gntgraphservice-deviceandappmanagementringactivationdurationcriteria.md) to specify a delay relative to the preceding ring.|
|assignmentConfigurations|[deviceAndAppManagementRingTemplateAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementringtemplateassignmentconfiguration.md) collection|The assignment target change operations associated with this ring template. Required.|
|displayName|String|The display name of the ring template. Required. Maximum length is 256 characters.|
|order|Int32|The ring processing order, from 1 through 100. Required. The next ring isn't evaluated until the preceding ring has activated.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentRingTemplate"
} -->
```json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentRingTemplate",
  "displayName": "String",
  "order": "Int32",
  "activationCriteria": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementRingActivationCriteria"
  },
  "assignmentConfigurations": [
    {
      "@odata.type": "microsoft.graph.deviceAndAppManagementRingTemplateAssignmentConfiguration"
    }
  ]
}
```
