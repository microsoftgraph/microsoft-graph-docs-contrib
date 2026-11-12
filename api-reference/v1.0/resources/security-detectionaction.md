---
title: "detectionAction resource type"
description: "Describes the actions that will be taken after a detection is made by the custom detection rule."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 08/25/2026
---

# detectionAction resource type

Namespace: microsoft.graph.security

Describes the actions that are taken after a detection is made by a [custom detection rule](../resources/security-detectionrule.md), including the alert that is created and any automated actions that run against impacted entities.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|alertTemplate|[microsoft.graph.security.alertTemplate](../resources/security-alerttemplate.md)|The template that defines the alert that is generated when this rule detects a match, including alert metadata (severity, title, description), entity mappings, custom details, and MITRE tactics.|
|automatedActions|[microsoft.graph.security.automatedActionSet](../resources/security-automatedactionset.md)|The set of automated actions to run against entities that match the detection.|
|organizationalScope|[microsoft.graph.security.organizationalScope](../resources/security-organizationalscope.md)|The set of groups (for example, device groups) to which the parent custom detection rule applies.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.detectionAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.detectionAction",
  "alertTemplate": {
    "@odata.type": "microsoft.graph.security.alertTemplate"
  },
  "automatedActions": {
    "@odata.type": "microsoft.graph.security.automatedActionSet"
  },
  "organizationalScope": {
    "@odata.type": "microsoft.graph.security.organizationalScope"
  }
}
```
