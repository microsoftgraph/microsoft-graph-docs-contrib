---
title: "customExtensionClientConfiguration resource type"
description: "Connection settings that define timeout and retry behavior for calls from Microsoft Entra ID to an external app."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 09/16/2026
---

# customExtensionClientConfiguration resource type

Namespace: microsoft.graph

Connection settings that define how long Microsoft Entra ID can wait for a response from an external app before it shuts down the connection when trying to trigger the external app. This object is configured in the **clientConfiguration** property of the [customTaskExtension](../resources/identitygovernance-customtaskextension.md) and [roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) resources.

In entitlement management, this object is configured in the **clientConfiguration** property of:
- [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md)
- [accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md)
- [customCalloutExtension](../resources/customcalloutextension.md)

## Properties

|Property|Type|Description|
|:---|:---|:---|
|maximumRetries|Int32|The max number of retries that Microsoft Entra ID makes to the external API. For a **roleManagementCustomCalloutExtension**, the valid range is from `0` through `5`. For other custom extensions, values of `0` or `1` are supported. If `null`, the default for the service applies.|
|timeoutInMilliseconds|Int32|The max duration in milliseconds that Microsoft Entra ID waits for a response from the external app before it shuts down the connection. For a **roleManagementCustomCalloutExtension**, the valid range is from `1000` through `60000` milliseconds. For other custom extensions, the valid range is from `200` through `2000` milliseconds and the default is `1000` milliseconds.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customExtensionClientConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customExtensionClientConfiguration",
  "maximumRetries": "Integer",
  "timeoutInMilliseconds": "Integer"
}
```
