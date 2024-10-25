---
title: "Announcement resource type"
description: "Represents the Microsoft Entra change announcements, including deprecations, breaking changes, retirements, feature changes, and Microsoft-managed policies."
author: "garretraziel"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# Announcement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Microsoft Entra change announcements, including deprecations, breaking changes, retirements, feature changes, and Microsoft-managed policies.

Inherits from [changeItemBase](../resources/changeitembase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/announcement-list.md)|[announcement](../resources/announcement.md) collection|Get a list of the [announcement](../resources/announcement.md) objects and their properties.|
|[Get](../api/announcement-get.md)|[announcement](../resources/announcement.md)|Read the properties and relationships of an [announcement](../resources/announcement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|announcementDateTime|DateTimeOffset|Change announcement date.|
|changeItemService|changeItemService|Specifies the Microsoft Entra service name to which this item belongs. Inherited from [changeItemBase](../resources/changeitembase.md). The possible values are: `accessReviews`, `appProxy`, `audit`, `authenticationsLogins`, `azureADDomainServices`, `b2B`, `b2CConsumerIdentityManagement`, `conditionalAccess`, `deviceAccessManagement`, `deviceRegistrationandManagement`, `directoryManagement`, `enterpriseApps`, `entitlementManagement`, `groupManagement`, `identityProtection`, `internetAccess`, `lifecycleWorkflows`, `linkedIn`, `managedidentitiesforAzureresources`, `mfA`, `microsoftAuthenticatorApp`, `microsoftIdentityManager`, `msGraph`, `myApps`, `myProfileAccount`, `na`, `o365Groups`, `other`, `privateAccess`, `privilegedIdentityManagement`, `provisioning`, `rbac`, `reporting`, `roles`, `selfServicePasswordReset`, `sovereignClouds`, `termsofUse`, `userAccessManagement`, `userExperienceandManagement`, `userManagement`, `microsoftEntraDomainServices`, `verifiedId`, `unknownFutureValue`.|
|changeItemState|changeItemState|Indicates whether this change is released or if it's an upcoming release. Inherited from [changeItemBase](../resources/changeitembase.md). The possible values are: `available`, `comingSoon`, `unknownFutureValue`.|
|description|String|Description of the change announcement. Inherited from [changeItemBase](../resources/changeitembase.md).|
|documentationUrls|String collection|Link to the change documentation. Inherited from [changeItemBase](../resources/changeitembase.md).|
|id|String|Unique identifier for the change announcement. Inherited from [entity](../resources/entity.md).|
|impactLink|String|Change impact URL.|
|isCustomerActionRequired|Boolean|Indicates whether the customer needs to take any action for this change.|
|shortDescription|String|A short description of the change. Inherited from [changeItemBase](../resources/changeitembase.md).|
|systemTags|String collection|Microsoft Entra specific tags. Inherited from [changeItemBase](../resources/changeitembase.md).|
|tags|String collection|Identity and Access Management (IAM) related tags. Inherited from [changeItemBase](../resources/changeitembase.md).|
|targetDateTime|DateTimeOffset|Date on which the change roll out.|
|title|String|Title of the change. Inherited from [changeItemBase](../resources/changeitembase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.announcement",
  "baseType": "microsoft.graph.changeItemBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.announcement",
  "id": "String (identifier)",
  "changeItemState": "String",
  "changeItemService": "String",
  "tags": [
    "String"
  ],
  "systemTags": [
    "String"
  ],
  "documentationUrls": [
    "String"
  ],
  "shortDescription": "String",
  "title": "String",
  "description": "String",
  "announcementDateTime": "String (timestamp)",
  "targetDateTime": "String (timestamp)",
  "impactLink": "String",
  "isCustomerActionRequired": "Boolean"
}
```
