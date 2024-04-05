---
title: "customClaim resource type"
description: "Represents an individual claim included in the tokens affected by this policy."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.service: entra-id
doc_type: resourcePageType
---

# customClaim resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an individual claim included in the tokens affected by this policy. It consists of a configurable name, namespace, token format, and claim name format. The claim name format is applicable only for SAML tokens.

Inherits from [customClaimBase](../resources/customclaimbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configurations|[customClaimConfiguration](../resources/customclaimconfiguration.md) collection|One or more configurations that describe how the claim is sourced and under what conditions. Inherited from [customClaimBase](../resources/customclaimbase.md).|
|name|String|The name of the claim to be emitted.|
|namespace|String|An optional namespace to be included as part of the claim name.|
|samlAttributeNameFormat|samlAttributeNameFormat|If specified, it sets the `nameFormat` attribute associated with the claim in the SAML response. The possible values are: `unspecified`, `uri`, `basic`, `unknownFutureValue`.|
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
