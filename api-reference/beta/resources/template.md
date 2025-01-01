---
title: "template resource type"
description: "Represents a container for templates, such as device templates used for onboarding devices in Microsoft Entra ID."
author: "ploegert"
ms.localizationpriority: medium
ms.date: 12/31/2024
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# template resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for templates, such as device templates used for onboarding devices in Microsoft Entra ID.

## Methods
None.

## Properties
None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|deviceTemplates|[deviceTemplate](../resources/devicetemplate.md) collection|Defines the templates that are common to a set of device objects, such as IoT devices.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.template",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.template"
}
```

