---
title: "azureAdPopTokenAuthentication resource type"
description: "Defines the Microsoft Entra Proof Of Possession (PoP) used to authenticate with a workflow extension."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# azureAdPopTokenAuthentication resource type

Namespace: microsoft.graph


Defines the Proof Of Possession (PoP) token authentication model to authenticate a logic app with a [accessPackageAssignmentRequestWorkflowExtensions](../resources/accessPackageAssignmentRequestWorkflowExtension.md) or a [accessPackageAssignmentWorkflowExtensions](../resources/accessPackageAssignmentWorkflowExtension.md) object.


Inherits from [customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md).

## Properties

None.

## Relationships

None.


## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.customExtensionAuthenticationConfiguration",
  "@odata.type": "microsoft.graph.azureAdPopTokenAuthentication"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureAdPopTokenAuthentication"
}
```
