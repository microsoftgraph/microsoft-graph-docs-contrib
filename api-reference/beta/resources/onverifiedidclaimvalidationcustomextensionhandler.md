---
title: "onVerifiedIdClaimValidationCustomExtensionHandler resource type"
description: "A handler configuration for invoking a custom extension to validate Verified ID claims through an external API call."
author: "FaithOmbongi"
ms.date: 03/05/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onVerifiedIdClaimValidationCustomExtensionHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A handler configuration for invoking a custom extension (calling an external API) to validate claims from Verified ID credential presentations. This handler type is used when organizations want to validate Verified ID claims against their own systems or business rules.

Inherits from [onVerifiedIdClaimValidationHandler](../resources/onverifiedidclaimvalidationhandler.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|configuration|[customExtensionOverwriteConfiguration](../resources/customextensionoverwriteconfiguration.md)|Configuration settings that can override the custom extension's default properties for this specific listener. If no values are provided, the properties defined on the custom extension are used.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[onVerifiedIdClaimValidationCustomExtension](../resources/onverifiedidclaimvalidationcustomextension.md)|The custom extension to invoke for validating Verified ID claims. This extension defines the external API endpoint and authentication configuration.|

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
  }
}
```
