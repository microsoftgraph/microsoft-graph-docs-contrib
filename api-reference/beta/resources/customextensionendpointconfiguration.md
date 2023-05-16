---
title: "customExtensionEndpointConfiguration resource type"
description: "Abstract base type that exposes the derived types used to configure the endpointConfiguration property of a custom extension."
author: "currenmehta"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customExtensionEndpointConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type that exposes the derived types used to configure the **endpointConfiguration** property of a custom extension. This abstract type is inherited by the following types:

- [logicAppTriggerEndpointConfiguration](logicapptriggerendpointconfiguration.md) - configure this object for the [customTaskExtension](../resources/identitygovernance-customtaskextension.md) in Lifecycle Workflows and [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) in Entitlement Management access package request and assignment cycles.
- [httpRequestEndpoint](../resources/httprequestendpoint.md) - configure this object to [validate a custom authentication extension](../api/customauthenticationextension-validateauthenticationconfiguration.md).

## Properties

None.

## JSON representation

The following is a JSON representation of the resource.
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
