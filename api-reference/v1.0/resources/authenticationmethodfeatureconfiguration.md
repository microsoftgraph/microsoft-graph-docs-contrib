---
title: "authenticationMethodFeatureConfiguration resource type"
description: "Defines the features that are allowed for different authentication methods. For each authentication method, defines the users who are enabled or excluded from using the feature."
author: "mjsantani"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# authenticationMethodFeatureConfiguration resource type
Namespace: microsoft.graph

Defines the features that are allowed for different authentication methods. For each authentication method, defines the users who are enabled or excluded from using the feature.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeTarget|[featureTarget](../resources/featuretarget.md)|A single entity that is excluded from this feature.|
|includeTarget|[featureTarget](../resources/featuretarget.md)|A single entity that is included in this feature.|
|state|advancedConfigState|Enable or disable the feature. Possible values are: `default`, `enabled`, `disabled`, `unknownFutureValue`. The `default` value is used when the configuration hasn't been explicitly set and uses the default behavior of Microsoft Entra ID for the setting. The default value is `disabled`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationMethodFeatureConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationMethodFeatureConfiguration",
  "excludeTarget": {
    "@odata.type": "microsoft.graph.featureTarget"
  },
  "includeTarget": {
    "@odata.type": "microsoft.graph.featureTarget"
  },
  "state": "String"
}
```
