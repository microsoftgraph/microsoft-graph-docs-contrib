---
title: "roadmap resource type"
description: "**TODO: Add Description**"
author: "garretraziel"
ms.localizationpriority: medium
ms.subservice: "service-communications"
doc_type: resourcePageType
---

# roadmap resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

Inherits from [changeItemBase](../resources/changeitembase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/roadmap-list.md)|[roadmap](../resources/roadmap.md) collection|Get a list of the [roadmap](../resources/roadmap.md) objects and their properties.|
|[Get](../api/roadmap-get.md)|[roadmap](../resources/roadmap.md)|Read the properties and relationships of a [roadmap](../resources/roadmap.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|roadmapItemCategory|**TODO: Add Description**.The possible values are: `aadConnectCloudSync`, `aadConnectSync`, `accessControl`, `authZAccessDelegation`, `azureADDomainServices`, `b2BB2C`, `collaboration`, `developerExperience`, `deviceLifecycleManagement`, `directory`, `endUserExperiences`, `entitlementManagement`, `extensibility`, `gdpr`, `goLocal`, `identityGovernance`, `identityLifecycleManagement`, `identitySecurityProtection`, `inboundtoEntraID`, `monitoringReporting`, `outboundtoOnPremisesApplications`, `outboundtoSaaSApplications`, `permissionsManagement`, `platform`, `privilegedIdentityManagement`, `reinventCollaboration`, `sso`, `standards`, `thirdPartyIntegration`, `userAuthentication`, `userManagement`, `decentralizedIdentities`, `entraCloudSync`, `entraConnect`, `entraDomainServices`, `other`, `unknownFutureValue`.|
|changeItemService|changeItemService|**TODO: Add Description** Inherited from [changeItemBase](../resources/changeitembase.md).The possible values are: `accessReviews`, `appProxy`, `audit`, `authenticationsLogins`, `azureADDomainServices`, `b2B`, `b2CConsumerIdentityManagement`, `conditionalAccess`, `deviceAccessManagement`, `deviceRegistrationandManagement`, `directoryManagement`, `enterpriseApps`, `entitlementManagement`, `groupManagement`, `identityProtection`, `internetAccess`, `lifecycleWorkflows`, `linkedIn`, `managedidentitiesforAzureresources`, `mfA`, `microsoftAuthenticatorApp`, `microsoftIdentityManager`, `msGraph`, `myApps`, `myProfileAccount`, `na`, `o365Groups`, `other`, `privateAccess`, `privilegedIdentityManagement`, `provisioning`, `rbac`, `reporting`, `roles`, `selfServicePasswordReset`, `sovereignClouds`, `termsofUse`, `userAccessManagement`, `userExperienceandManagement`, `userManagement`, `microsoftEntraDomainServices`, `verifiedId`, `unknownFutureValue`.|
|changeItemState|changeItemState|**TODO: Add Description** Inherited from [changeItemBase](../resources/changeitembase.md).The possible values are: `available`, `comingSoon`, `unknownFutureValue`.|
|deliveryStage|roadmapItemDeliveryStage|**TODO: Add Description**.The possible values are: `privatePreview`, `publicPreview`, `ga`, `unknownFutureValue`.|
|description|String|**TODO: Add Description** Inherited from [changeItemBase](../resources/changeitembase.md).|
|documentationUrls|String collection|**TODO: Add Description** Inherited from [changeItemBase](../resources/changeitembase.md).|
|gotoLink|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|publishedDateTime|DateTimeOffset|**TODO: Add Description**|
|shortDescription|String|**TODO: Add Description** Inherited from [changeItemBase](../resources/changeitembase.md).|
|systemTags|String collection|**TODO: Add Description** Inherited from [changeItemBase](../resources/changeitembase.md).|
|tags|String collection|**TODO: Add Description** Inherited from [changeItemBase](../resources/changeitembase.md).|
|title|String|**TODO: Add Description** Inherited from [changeItemBase](../resources/changeitembase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.roadmap",
  "baseType": "microsoft.graph.changeItemBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.roadmap",
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
  "deliveryStage": "String",
  "category": "String",
  "publishedDateTime": "String (timestamp)",
  "gotoLink": "String"
}
```
