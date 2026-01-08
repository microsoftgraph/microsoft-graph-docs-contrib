---
title: "accessPackageRequestApprovalStageCallbackConfiguration resource type"
description: "Access Package callback settings that define how long Microsoft Entra ID can wait for a resume signal for the callout that it made to the logic app."
author: "vikama-microsoft"
ms.date: 07/02/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessPackageRequestApprovalStageCallbackConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Callback settings that define how long Microsoft Entra ID can wait for a resume signal for the callout [assignmentRequestApprovalStageCallbackData](../resources/assignmentrequestapprovalstagecallbackdata.md) that comes back from the logic app. Inherits from [customExtensionCallbackConfiguration](../resources/customextensioncallbackconfiguration.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|timeoutDuration|Duration|The maximum duration in ISO 8601 format that Microsoft Entra ID will wait for a resume action for the callout it sent to the logic app. The valid range for custom extensions in lifecycle workflows is five minutes to three hours. The valid range for custom extensions in entitlement management is between 5 minutes and 14 days. For example, `PT3H` refers to three hours, `P3D` refers to three days, `PT10M` refers to ten minutes. Inherited from [customExtensionCallbackConfiguration](../resources/customextensioncallbackconfiguration.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageRequestApprovalStageCallbackConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageRequestApprovalStageCallbackConfiguration",
  "timeoutDuration": "String (duration)"
}
```
