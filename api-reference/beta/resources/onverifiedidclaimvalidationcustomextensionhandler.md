---
title: "onVerifiedIdClaimValidationCustomExtensionHandler resource type"
description: "Represents a handler that invokes a custom authentication extension for validating claims from Verified ID credential presentations."
author: "vbogomaz"
ms.date: 03/05/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onVerifiedIdClaimValidationCustomExtensionHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a handler that invokes a custom authentication extension API to validate claims from Verified ID credential presentations during the authentication flow. When triggered, this handler calls the configured custom extension API with the Verified ID claims context to determine whether the claims pass or fail validation.

Inherits from [onVerifiedIdClaimValidationHandler](../resources/onverifiedidclaimvalidationhandler.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuration|[customExtensionOverwriteConfiguration](../resources/customextensionoverwriteconfiguration.md)|Configuration that overrides the default settings from the referenced custom extension, such as timeout and retry values. Optional.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[onVerifiedIdClaimValidationCustomExtension](../resources/onverifiedidclaimvalidationcustomextension.md)|Reference to the custom authentication extension that is invoked to validate the Verified ID claims.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onVerifiedIdClaimValidationCustomExtensionHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onVerifiedIdClaimValidationCustomExtensionHandler",
  "configuration": {
    "@odata.type": "microsoft.graph.customExtensionOverwriteConfiguration"
  },
  "customExtension": {
    "@odata.type": "microsoft.graph.onVerifiedIdClaimValidationCustomExtension"
  }
}
```
