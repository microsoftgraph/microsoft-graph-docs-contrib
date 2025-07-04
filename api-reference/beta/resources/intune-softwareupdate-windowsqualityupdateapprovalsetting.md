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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity to record approval settings for windows quality update policies

## Properties
|Property|Type|Description|
|:---|:---|:---|
|windowsQualityUpdateCadence|[windowsQualityUpdateCadence](../resources/intune-softwareupdate-windowsqualityupdatecadence.md)|The publishing cadence of a quality update catalog item. Possible values are: `monthly`, `outOfBand`, `unknownFutureValue`.|
|windowsQualityUpdateCategory|[windowsQualityUpdateCategory](../resources/intune-softwareupdate-windowsqualityupdatecategory.md)|The category of a Windows quality update catalog item. Possible values are: `all`, `security`, `nonSecurity`.|
|approvalMethodType|[windowsQualityUpdatePolicyApprovalMethodType](../resources/intune-softwareupdate-windowsqualityupdatepolicyapprovalmethodtype.md)|The approval type of specific gourp of quality updates. Possible values are: `manual`, `automatic`, `unknownFutureValue`.|
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