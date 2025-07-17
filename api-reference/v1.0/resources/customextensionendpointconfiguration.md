---
title: "customExtensionEndpointConfiguration resource type"
description: "Abstract base type that exposes the derived types used to configure the endpointConfiguration property of a custom extension."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# customExtensionEndpointConfiguration resource type

Namespace: microsoft.graph

Abstract base type that exposes the derived types used to configure the **endpointConfiguration** property of a custom extension. This abstract type is inherited by the following type:

- [logicAppTriggerEndpointConfiguration](logicapptriggerendpointconfiguration.md) - configure this object for the [customTaskExtension](../resources/identitygovernance-customtaskextension.md) in Lifecycle Workflows in Entitlement Management access package request and assignment cycles.
- [httpRequestEndpoint](../resources/httprequestendpoint.md) - configure this object to [validate a custom authentication extension](../api/customauthenticationextension-validateauthenticationconfiguration.md).

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customExtensionEndpointConfiguration",
  "abstract": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customExtensionEndpointConfiguration" 
}
```
