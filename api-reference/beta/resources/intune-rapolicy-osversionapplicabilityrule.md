---
title: "osVersionApplicabilityRule resource type"
description: "Intune Rapolicy Osversionapplicabilityrule Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# osVersionApplicabilityRule resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.




Inherits from [applicabilityRule](../resources/intune-rapolicy-applicabilityrule.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|filterType|[filterAssociationType](../resources/intune-rapolicy-filterassociationtype.md)| Inherited from [applicabilityRule](../resources/intune-rapolicy-applicabilityrule.md). Possible values are: `unknown`, `include`, `exclude`.|
|minOSVersion|String||
|maxOSVersion|String||

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.osVersionApplicabilityRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.osVersionApplicabilityRule",
  "filterType": "String",
  "minOSVersion": "String",
  "maxOSVersion": "String"
}
```