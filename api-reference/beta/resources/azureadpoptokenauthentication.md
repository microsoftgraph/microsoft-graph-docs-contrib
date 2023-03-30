---
title: "azureAdPopTokenAuthentication resource type"
description: "Defines the Azure AD Proof Of Possession (PoP) used to authenticate with a workflow extension."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# azureAdPopTokenAuthentication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the Proof Of Possession (PoP) token authentication model to authenticate a logic app with a [accessPackageAssignmentRequestWorkflowExtensions](../resources/accessPackageAssignmentRequestWorkflowExtension.md) or a [accessPackageAssignmentWorkflowExtensions](../resources/accessPackageAssignmentWorkflowExtension.md) object. 

Inherits from [customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
