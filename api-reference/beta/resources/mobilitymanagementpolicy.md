---
title: "mobilityManagementPolicy resource type"
description: "A mobility management policy represents an autoenrollment policy for a mobility management application configured in Microsoft Entra ID."
author: "ravennMSFT"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 07/08/2024
---

# mobilityManagementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In Microsoft Entra ID, a mobility management policy represents an autoenrollment configuration for a mobility management (MDM or MAM) application. These policies are only applicable to devices based on Windows 10 OS and its derivatives such as Surface Hub and HoloLens. [Autoenrollment](/windows/client-management/azure-ad-and-microsoft-intune-automatic-mdm-enrollment-in-the-new-portal) automatically enrolls Windows 10 devices into mobility management applications during [Microsoft Entra join](/entra/identity/devices/concept-directory-join) or [Microsoft Entra register](/entra/identity/devices/concept-device-registration) processes.

## Methods
None

## Properties

|Property|Type|Description|
|:---|:---|:---|
|appliesTo|policyScope|Indicates the user scope of the mobility management policy. Possible values are: `none`, `all`, `selected`.|
|complianceUrl|String|Compliance URL of the mobility management application.|
|description|String|Description of the mobility management application.|
|discoveryUrl|String|Discovery URL of the mobility management application.|
|displayName|String|Display name of the mobility management application.|
|id|String|Object Id of the mobility management application.|
|isValid|Boolean|Whether policy is valid. Invalid policies may not be updated and should be deleted.|
|termsOfUseUrl|String|Terms of Use URL of the mobility management application.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|includedGroups|[group](../resources/group.md) collection|Microsoft Entra groups under the scope of the mobility management application if appliesTo is `selected`|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobilityManagementPolicy",
  "openType": false
}
-->

``` json
{
  "id": "String (identifier)",
  "appliesTo": "String",
  "complianceUrl": "String",
  "description": "String",
  "discoveryUrl": "String",
  "displayName": "String",
  "isValid": "Boolean",
  "termsOfUseUrl": "String"
}
```

<!-- uuid: 5c98f801-d1c4-44eb-ac11-f72b6754deda
2020-03-23T22:34:45.203Z -->
<!-- {
  "type": "#page.annotation",
  "description": "mobilityManagementPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
