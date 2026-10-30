---
title: "customExtensionEndpointConfiguration resource type"
description: "Abstract base type that exposes the derived types used to configure the endpointConfiguration property of a custom extension."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# customExtensionEndpointConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Exposes the derived types used to configure the **endpointConfiguration** property of a custom extension. This abstract type can't be instantiated directly. In Lifecycle Workflows, its derived types are configured in the **endpointConfiguration** property of the [customTaskExtension](../resources/identitygovernance-customtaskextension.md) resource. In Privileged Identity Management, they're configured in the **endpointConfiguration** property of the [roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) resource. This abstract type is inherited by the following types:

- [logicAppTriggerEndpointConfiguration](../resources/logicapptriggerendpointconfiguration.md) - configure this object for the [customTaskExtension](../resources/identitygovernance-customtaskextension.md) in Lifecycle Workflows and [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) in Entitlement Management access package request and assignment cycles.
- [httpRequestEndpoint](../resources/httprequestendpoint.md) - configure this object for an HTTP-based custom extension, including a [roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md), or to [validate a custom authentication extension](../api/customauthenticationextension-validateauthenticationconfiguration.md).

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
