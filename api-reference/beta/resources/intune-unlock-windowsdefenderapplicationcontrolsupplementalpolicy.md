---
title: "windowsDefenderApplicationControlSupplementalPolicy resource type"
description: "Not yet documented"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsDefenderApplicationControlSupplementalPolicy resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsDefenderApplicationControlSupplementalPolicies](../api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy-list.md)|[windowsDefenderApplicationControlSupplementalPolicy](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy.md) collection|List properties and relationships of the [windowsDefenderApplicationControlSupplementalPolicy](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy.md) objects.|
|[Get windowsDefenderApplicationControlSupplementalPolicy](../api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy-get.md)|[windowsDefenderApplicationControlSupplementalPolicy](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy.md)|Read properties and relationships of the [windowsDefenderApplicationControlSupplementalPolicy](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy.md) object.|
|[Create windowsDefenderApplicationControlSupplementalPolicy](../api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy-create.md)|[windowsDefenderApplicationControlSupplementalPolicy](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy.md)|Create a new [windowsDefenderApplicationControlSupplementalPolicy](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy.md) object.|
|[Delete windowsDefenderApplicationControlSupplementalPolicy](../api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy-delete.md)|None|Deletes a [windowsDefenderApplicationControlSupplementalPolicy](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy.md).|
|[Update windowsDefenderApplicationControlSupplementalPolicy](../api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy-update.md)|[windowsDefenderApplicationControlSupplementalPolicy](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy.md)|Update the properties of a [windowsDefenderApplicationControlSupplementalPolicy](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy.md) object.|
|[assign action](../api/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy-assign.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the Windows Defender Application Control Supplemental Policy. This id is assigned during creation of the policy.|
|displayName|String|The display name of the Windows Defender Application Control Supplemental Policy.|
|description|String|The description of the Windows Defender Application Control Supplemental Policy.|
|content|Binary|Indicates the content of the Windows Defender Application Control Supplemental Policy in byte array format.|
|contentFileName|String|Indicates the file name associated with the content of the Windows Defender Application Control Supplemental Policy.|
|version|String|Indicates the Windows Defender Application Control Supplemental Policy's version.|
|creationDateTime|DateTimeOffset|Indicates the created date and time when the Windows Defender Application Control Supplemental Policy was uploaded.|
|lastModifiedDateTime|DateTimeOffset|Indicates the last modified date and time of the Windows Defender Application Control Supplemental Policy.|
|roleScopeTagIds|String collection|List of Scope Tags for the Windows Defender Application Control Supplemental Policy entity.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[windowsDefenderApplicationControlSupplementalPolicyAssignment](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicyassignment.md) collection|The associated group assignments for the Windows Defender Application Control Supplemental Policy.|
|deploySummary|[windowsDefenderApplicationControlSupplementalPolicyDeploymentSummary](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentsummary.md)|WindowsDefenderApplicationControl supplemental policy deployment summary.|
|deviceStatuses|[windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicydeploymentstatus.md) collection|The list of device deployment states for this WindowsDefenderApplicationControl supplemental policy.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsDefenderApplicationControlSupplementalPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsDefenderApplicationControlSupplementalPolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "content": "binary",
  "contentFileName": "String",
  "version": "String",
  "creationDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ]
}
```
