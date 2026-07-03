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

Abstract base type that exposes the derived types used to configure the **endpointConfiguration** property of a custom extension. In Lifecycle Workflows, the derived types of this object are configured in the **endpointConfiguration** property of the [customTaskExtension](../resources/identitygovernance-customtaskextension.md) resource. This abstract type is inherited by the following type:

- [logicAppTriggerEndpointConfiguration](../resources/logicapptriggerendpointconfiguration.md) - configure this object for the [customTaskExtension](../resources/identitygovernance-customtaskextension.md) in Lifecycle Workflows in Entitlement Management access package request and assignment cycles.
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
