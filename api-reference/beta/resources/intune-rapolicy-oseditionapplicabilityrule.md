---
title: "osEditionApplicabilityRule resource type"
description: "Intune Rapolicy Oseditionapplicabilityrule Resources ."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# osEditionApplicabilityRule resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.




Inherits from [applicabilityRule](../resources/intune-rapolicy-applicabilityrule.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|filterType|[filterAssociationType](../resources/intune-rapolicy-filterassociationtype.md)| Inherited from [applicabilityRule](../resources/intune-rapolicy-applicabilityrule.md). Possible values are: `unknown`, `include`, `exclude`.|
|osEditions|Int32 collection||

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.osEditionApplicabilityRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.osEditionApplicabilityRule",
  "filterType": "String",
  "osEditions": [
    1024
  ]
}
```
