---
title: "workflowSubject resource type"
description: "Represents an abstract base type for subjects that can be activated in identity governance lifecycle workflows."
author: "masonwolff"
ms.date: 05/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# workflowSubject resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract base type for subjects that can be activated in identity governance lifecycle workflows. The derived types of this object are configured in the following resources:
- **subject** property of [awaitedWorkflowProcessingResult](../resources/identitygovernance-awaitedworkflowprocessingresult.md)
- **subject** property of [subjectProcessingResult](../resources/identitygovernance-subjectprocessingresult.md)
- **workflowSubject** property of [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md)
- **targetSubject** property of [customTaskExtensionCallbackData](../resources/identitygovernance-customtaskextensioncallbackdata.md)
- **targetSubject** property of [customTaskExtensionCalloutData](../resources/identitygovernance-customtaskextensioncalloutdata.md)
- **targetSubject** property of [customTaskExtensionResponseData](../resources/identitygovernance-customtaskextensionresponsedata.md)

This is an abstract type. It cannot be instantiated directly. Use the derived type [provisioningObjectWorkflowSubject](../resources/identitygovernance-provisioningobjectworkflowsubject.md) to create a workflow subject for provisioning scenarios.

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.workflowSubject"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowSubject"
}
```
