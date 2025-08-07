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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

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