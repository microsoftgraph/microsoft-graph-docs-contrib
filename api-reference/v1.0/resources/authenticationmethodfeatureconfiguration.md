---
title: "authenticationMethodFeatureConfiguration resource type"
description: "Defines the features that are allowed for different authentication methods. For each authentication method, defines the users who are enabled or excluded from using the feature."
author: "mjsantani"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationMethodFeatureConfiguration resource type
Namespace: microsoft.graph

Defines the features that are allowed for different authentication methods. For each authentication method, defines the users who are enabled or excluded from using the feature.

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

