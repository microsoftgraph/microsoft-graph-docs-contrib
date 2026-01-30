---
title: "customExtensionData resource type"
description: "An abstract type noting the data being sent and received as part of extensibility scenarios based on custom callout extensions"
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# customExtensionData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type noting the data being sent and received as part of extensibility scenarios based on [custom callout extensions](../resources/customcalloutextension.md). The following types are derived from this abstract type:

- [accessPackageAssignmentCalloutData](../resources/accesspackageassignmentcalloutdata.md)
- [accessPackageAssignmentRequestCallbackData](../resources/accesspackageassignmentrequestcallbackdata.md)
- [accessPackageAssignmentRequestCalloutData](../resources/accesspackageassignmentrequestcalloutdata.md)
- [customTaskExtensionCalloutData](../resources/identitygovernance-customtaskextensioncalloutdata.md)
- [customTaskExtensionCallbackData](../resources/identitygovernance-customtaskextensioncallbackdata.md)

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customExtensionData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customExtensionData"
}
```

