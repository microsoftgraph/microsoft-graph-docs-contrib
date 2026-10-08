---
title: "customExtensionCallbackConfiguration resource type"
description: "Callback settings that define how long Microsoft Entra ID can wait for a resume signal for the callout that it made to the logic app."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# customExtensionCallbackConfiguration resource type

Namespace: microsoft.graph

Callback settings that define how long Microsoft Entra ID can wait for a resume signal for the callout that it made to the logic app. This is an abstract type that's inherited by [customTaskExtensionCallbackConfiguration](../resources/identitygovernance-customtaskextensioncallbackconfiguration.md). In Lifecycle Workflows, the derived types of this object are configured in the **callbackConfiguration** property of the [customTaskExtension](../resources/identitygovernance-customtaskextension.md) resource.

In entitlement management, the derived types of this object are configured in the **callbackConfiguration** property of:
- [accessPackageAssignmentCalloutData](../resources/accesspackageassignmentcalloutdata.md)
- [accessPackageAssignmentRequestCalloutData](../resources/accesspackageassignmentrequestcalloutdata.md)
- [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md)
- [accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md)

## Properties

|Property|Type|Description|
|:---|:---|:---|
|timeoutDuration|Duration|The maximum duration in ISO 8601 format that Microsoft Entra ID will wait for a resume action for the callout it sent to the logic app. The valid range for custom extensions in lifecycle workflows is five minutes to three hours. The valid range for custom extensions in entitlement management is between 5 minutes and 14 days. For example, `PT3H` refers to three hours, `P3D` refers to three days, `PT10M` refers to ten minutes.|



## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customExtensionCallbackConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customExtensionCallbackConfiguration",
  "timeoutDuration": "String (duration)"
}
```
