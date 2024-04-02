---
title: "samlNameIdClaim resource type"
description: "A nameID claim to be included in the SAML tokens affected by this policy."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.service: entra-id
doc_type: resourcePageType
---

# samlNameIdClaim resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A NameID claim included in the SAML tokens affected by this policy.

Inherits from [customClaimBase](../resources/customclaimbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configurations|[customClaimConfiguration](../resources/customclaimconfiguration.md) collection|One or more configurations that describe how the claim is sourced and under what conditions. Inherited from [customClaimBase](../resources/customclaimbase.md).|
|nameIdFormat|samlNameIDFormat|Allows to specify the format of the saml NameID claim value. The possible values are: `default`, `unspecified`, `emailAddress`, `windowsDomainQualifiedName`, `persistent`, `unknownFutureValue`.|
|serviceProviderNameQualifier|String|Allows the specification of a service provider name qualifier that will be reflected back in the sAML response. The value provided must match one of the service provider names configured for the application and is only applicable for IdP-initiated applications (Sign on URL should be empty for the IdP-initiated applications), in all other cases this value will be ignored.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.samlNameIdClaim"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.samlNameIdClaim",
  "configurations": [
    {
      "@odata.type": "microsoft.graph.customClaimConfiguration"
    }
  ],
  "serviceProviderNameQualifier": "String",
  "nameIdFormat": "String"
}
```

