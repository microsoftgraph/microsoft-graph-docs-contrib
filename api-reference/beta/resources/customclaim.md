---
title: "customClaim resource type"
description: "An individual claim to be included in the tokens affected by this policy, with configurable name, namespace, token format and claim name format(which is applicable only for saml tokens)."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# customClaim resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An individual claim to be included in the tokens affected by this policy, with configurable name, namespace, token format and claim name format(which is applicable only for saml tokens).

Inherits from [customClaimBase](../resources/customclaimbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configurations|[customClaimConfiguration](../resources/customclaimconfiguration.md) collection|One or more configurations that describe how the claim is sourced and under what conditions. Inherited from [customClaimBase](../resources/customclaimbase.md).|
|name|String|The name of the claim to be emitted.|
|namespace|String|An optional namespace to be included as part of the claim name.|
|samlAttributeNameFormat|samlAttributeNameFormat|If specified, sets the 'NameFormat' attribute associated with claim in the SAML response. The possible values are: `unspecified`, `uri`, `basic`, `unknownFutureValue`.|
|tokenFormat|tokenFormat collection|List of token formats for which this claim should be emitted.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customClaim"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customClaim",
  "configurations": [
    {
      "@odata.type": "microsoft.graph.customClaimConfiguration"
    }
  ],
  "name": "String",
  "namespace": "String",
  "tokenFormat": [
    "String"
  ],
  "samlAttributeNameFormat": "String"
}
```
