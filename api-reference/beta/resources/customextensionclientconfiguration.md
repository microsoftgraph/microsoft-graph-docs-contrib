---
title: "customExtensionClientConfiguration resource type"
description: "Connection settings that define how long Microsoft Entra ID can wait for a response from an external app before it shuts down the connection"
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# customExtensionClientConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines connection settings that control how long Microsoft Entra ID waits for a response from an external app before it closes the connection. This object is configured in the **clientConfiguration** property of the [customTaskExtension](../resources/identitygovernance-customtaskextension.md) and [roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) resources.

In entitlement management, this object is configured in the **clientConfiguration** property of:
- [accessPackageAssignmentRequestWorkflowExtension](../resources/accesspackageassignmentrequestworkflowextension.md)
- [accessPackageAssignmentWorkflowExtension](../resources/accesspackageassignmentworkflowextension.md)
- [customCalloutExtension](../resources/customcalloutextension.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|maximumRetries|Int32|The maximum number of retries that Microsoft Entra ID makes to the external API. For a **roleManagementCustomCalloutExtension**, the valid range is from `0` through `5`. For other custom extensions, values of `0` or `1` are supported. If `null`, the default for the service applies.|
|timeoutInMilliseconds|Int32|The maximum duration in milliseconds that Microsoft Entra ID waits for a response from the external app before it closes the connection. For a **roleManagementCustomCalloutExtension**, the valid range is from `1000` through `60000` milliseconds. For other custom extensions, the valid range is from `200` through `2000` milliseconds. If `null`, the default for the service applies.|

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
  "timeoutInMilliseconds": "Integer",
  "maximumRetries": "Integer"
}
```
