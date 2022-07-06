---
title: "authenticationMethodFeatureConfiguration resource type"
description: "A complex type that defines, for a given authentication method, features that are allowed for the authentication method. This type also defines which single entities are included and excluded from the feature."
author: "mjsantani"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationMethodFeatureConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A complex type that defines, for a given authentication method, features that are allowed for the authentication method. This type also defines which single entities are included and excluded from the feature.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeTarget|[featureTarget](../resources/featuretarget.md)|A single entity that is excluded from this feature.|
|includeTarget|[featureTarget](../resources/featuretarget.md)|A single entity that is included in this feature.|
|state|advancedConfigState|Enable or disable the feature. Possible values are: `default`, `enabled`, `disabled`, `unknownFutureValue`. The `default` value is used when the configuration hasn't been explicitly set and uses the default behavior of Azure AD for the setting. The default value is `disabled`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationMethodFeatureConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationMethodFeatureConfiguration",
  "state": "String",
  "includeTarget": {
    "@odata.type": "microsoft.graph.featureTarget"
  },
  "excludeTarget": {
    "@odata.type": "microsoft.graph.featureTarget"
  }
}
```

