---
title: "authenticationConfigurationValidation resource type"
description: "The result of a validateAuthenticationConfiguration action that validates a customAuthenticationExtension configuration."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationConfigurationValidation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The validation result of a [validateAuthenticationConfiguration action](../api/customauthenticationextension-validateauthenticationconfiguration.md) that validates a [customAuthenticationExtension](../resources/customauthenticationextension.md) configuration.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|errors|[genericError](../resources/genericerror.md) collection|Errors in the validation result of a [customAuthenticationExtension](../resources/customauthenticationextension.md).|
|warnings|[genericError](../resources/genericerror.md) collection|Warnings in the validation result of a [customAuthenticationExtension](../resources/customauthenticationextension.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationConfigurationValidation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationConfigurationValidation",
  "errors": [
    {
      "@odata.type": "microsoft.graph.genericError"
    }
  ],
  "warnings": [
    {
      "@odata.type": "microsoft.graph.genericError"
    }
  ]
}
```

