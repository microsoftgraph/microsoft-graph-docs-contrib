---
title: "deviceAndAppManagementRingTemplateAssignmentConfiguration resource type"
description: "Represents an assignment target change operation in a deployment plan ring template."
author: "jaiprakashmb"
ms.topic: reference
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 11/05/2026
---

# deviceAndAppManagementRingTemplateAssignmentConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents an assignment target change operation in a deployment plan ring template.

Used only by the **assignmentConfigurations** property of [deviceAndAppManagementDeploymentRingTemplate](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentringtemplate.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|operation|[deviceAndAppManagementAssignmentOperationType](../resources/intune-gntgraphservice-deviceandappmanagementassignmentoperationtype.md)|The assignment operation. Required. The possible values are: `add`, `unknownFutureValue`. Use `add` to extend the assignments from preceding rings.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The group target and optional assignment filter configured by the administrator. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementRingTemplateAssignmentConfiguration"
} -->
```json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementRingTemplateAssignmentConfiguration",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
  },
  "operation": "String"
}
```
