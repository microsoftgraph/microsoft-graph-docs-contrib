---
title: "windowsQualityUpdateApprovalSetting resource type"
description: "Entity to record approval settings for windows quality update policies"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsQualityUpdateApprovalSetting resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity to record approval settings for windows quality update policies

## Properties
|Property|Type|Description|
|:---|:---|:---|
|windowsQualityUpdateCadence|[windowsQualityUpdateCadence](../resources/intune-softwareupdate-windowsqualityupdatecadence.md)|The publishing cadence of a quality update catalog item. The possible values are: `monthly`, `outOfBand`, `unknownFutureValue`.|
|windowsQualityUpdateCategory|[windowsQualityUpdateCategory](../resources/intune-softwareupdate-windowsqualityupdatecategory.md)|The category of a Windows quality update catalog item. The possible values are: `all`, `security`, `nonSecurity`, `unknownFutureValue`, `quickMachineRecovery`.|
|approvalMethodType|[windowsQualityUpdatePolicyApprovalMethodType](../resources/intune-softwareupdate-windowsqualityupdatepolicyapprovalmethodtype.md)|The approval type of specific gourp of quality updates. The possible values are: `manual`, `automatic`, `unknownFutureValue`.|
|deferredDeploymentInDay|Int32|The deferral days for auto approval type, not applicable for manual approve|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsQualityUpdateApprovalSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsQualityUpdateApprovalSetting",
  "windowsQualityUpdateCadence": "String",
  "windowsQualityUpdateCategory": "String",
  "approvalMethodType": "String",
  "deferredDeploymentInDay": 1024
}
```