---
title: "userRegistrationFeatureCount resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# userRegistrationFeatureCount resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|feature|authenticationMethodFeature|**TODO: Add Description**. Possible values are: `ssprRegistered`, `ssprEnabled`, `ssprCapable`, `passwordlessCapable`, `mfaCapable`.|
|userCount|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userRegistrationFeatureCount"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userRegistrationFeatureCount",
  "feature": "String",
  "userCount": "Integer"
}
```

