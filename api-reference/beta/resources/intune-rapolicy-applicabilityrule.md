---
title: "applicabilityRule resource type"
description: "Intune Rapolicy Applicabilityrule Resources ."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# applicabilityRule resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Properties
|Property|Type|Description|
|:---|:---|:---|
|filterType|[filterAssociationType](../resources/intune-rapolicy-filterassociationtype.md)|. Possible values are: `unknown`, `include`, `exclude`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicabilityRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.applicabilityRule",
  "filterType": "String"
}
```
