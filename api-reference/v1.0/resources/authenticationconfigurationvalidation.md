---
title: "authenticationConfigurationValidation resource type"
description: "The result of a validateAuthenticationConfiguration action that validates a customAuthenticationExtension configuration."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 04/23/2024
---

# authenticationConfigurationValidation resource type

Namespace: microsoft.graph

The validation result of a [validateAuthenticationConfiguration action](../api/customauthenticationextension-validateauthenticationconfiguration.md) that validates a [customAuthenticationExtension](../resources/customauthenticationextension.md) configuration.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|errors|[genericError](../resources/genericerror.md) collection|Errors in the validation result of a [customAuthenticationExtension](../resources/customauthenticationextension.md).|
|warnings|[genericError](../resources/genericerror.md) collection|Warnings in the validation result of a [customAuthenticationExtension](../resources/customauthenticationextension.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

