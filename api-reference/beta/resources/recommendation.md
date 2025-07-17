---
title: "recommendation resource type"
description: "Represents a Microsoft Entra ID best practice or improvement action recommended by Microsoft for your Microsoft Entra tenant."
author: "ddeeps2610"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 06/12/2024
---

# recommendation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Entra ID best practice or improvement action recommended by Microsoft for your Microsoft Entra tenant.

The Microsoft Entra recommendation service runs daily to check your tenant against predefined conditions for every recommendation. If the service detects that a recommendation applies to your tenant, the corresponding recommendation object is generated and its status is set to active.

For more information, see [What is Microsoft Entra recommendations?](https://go.microsoft.com/fwlink/?linkid=2221712).

Inherits from [recommendationBase](../resources/recommendationbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/directory-list-recommendation.md)|[recommendation](../resources/recommendation.md) collection|Get a list of the [recommendation](../resources/recommendation.md) objects and their properties.|
|[Get](../api/recommendation-get.md)|[recommendation](../resources/recommendation.md)|Read the properties and relationships of a [recommendation](../resources/recommendation.md) object.|
|[Postpone](../api/recommendation-postpone.md)|[recommendation](../resources/recommendation.md)|Mark the status of a [recommendation](../resources/recommendation.md) object as `postponed` to a specified date and time.|
|[Dismiss](../api/recommendation-dismiss.md)|[recommendation](../resources/recommendation.md)|Mark the status of a [recommendation](../resources/recommendation.md) object as `dismissed`.|
|[Complete](../api/recommendation-complete.md)|[recommendation](../resources/recommendation.md)|Mark the status of a [recommendation](../resources/recommendation.md) object as `completedByUser`.|
|[Reactivate](../api/recommendation-reactivate.md)|[recommendation](../resources/recommendation.md)|Mark the status of a [recommendation](../resources/recommendation.md) object as `active`.|
|[Get tenant Secure Score](../api/recommendation-tenantsecurescores.md)|[tenantSecureScore](../resources/tenantsecurescore.md) collection|Get historical Secure Score data for your tenant. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSteps|[actionStep](../resources/actionstep.md) collection|List of actions to take to complete a [recommendation](../resources/recommendation.md). Inherited from [recommendationBase](../resources/recommendationbase.md).|
|benefits|String|An explanation of why [completing the recommendation](../api/recommendation-complete.md) will benefit you. Corresponds to the *Value* section of a recommendation shown in the Microsoft Entra admin center. Inherited from [recommendationBase](../resources/recommendationbase.md).|
|category|recommendationCategory|Indicates the category of intelligent guidance that the recommendation falls under. The possible values are: `identityBestPractice`, `identitySecureScore`, `unknownFutureValue`, `mdiSecureScore`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `mdiSecureScore`. Inherited from [recommendationBase](../resources/recommendationbase.md). <br><br> Supports `$filter`(`eq`).|
|createdDateTime|DateTimeOffset|The date and time when the [recommendation](../resources/recommendation.md) was detected as applicable to your directory. Inherited from [recommendationBase](../resources/recommendationbase.md).|
|currentScore|Double|The number of points the tenant has attained. Only applies to [recommendations](../resources/recommendation.md) with **category** set to `identitySecureScore`. Inherited from [recommendationBase](../resources/recommendationbase.md).|
|displayName|String|The title of the [recommendation](../resources/recommendation.md). Inherited from [recommendationBase](../resources/recommendationbase.md).|
|featureAreas|recommendationFeatureAreas collection|The directory feature that the [recommendation](../resources/recommendation.md) is related to. Inherited from [recommendationBase](../resources/recommendationbase.md). <br><br> Supports `$filter`(`eq`).|
|id|String|The unique identifier for the [recommendation](../resources/recommendation.md) object generated for your tenant. This is a concatenation of your tenant ID and a Microsoft Entra ID-assigned nickname for the recommendation. For example, `7918d4b5-0442-4a97-be2d-36f9f9962ece_Microsoft.Identity.IAM.Insights.ThirdPartyApps`. Inherited from [recommendationBase](../resources/recommendationbase.md).|
|impactStartDateTime|DateTimeOffset|The future date and time when a [recommendation](../resources/recommendation.md) should be completed. Inherited from [recommendationBase](../resources/recommendationbase.md).|
|impactType|String|    Indicates the scope of impact of a recommendation. `tenantLevel` indicates that the recommendation impacts the whole tenant. Other possible values include `users`, `apps`. Inherited from [recommendationBase](../resources/recommendationbase.md).|
|insights|String|Describes why a recommendation uniquely applies to your directory. Corresponds to the *Description* section of a recommendation shown in the Microsoft Entra admin center. Inherited from [recommendationBase](../resources/recommendationbase.md).|
|lastCheckedDateTime|DateTimeOffset|The most recent date and time a [recommendation](../resources/recommendation.md) was deemed applicable to your directory. Inherited from [recommendationBase](../resources/recommendationbase.md).|
|lastModifiedBy|String|Name of the user who last updated the **status** of the [recommendation](../resources/recommendation.md). Inherited from [recommendationBase](../resources/recommendationbase.md).|
|lastModifiedDateTime|DateTimeOffset|    The date and time the **status** of a [recommendation](../resources/recommendation.md) was last updated. Inherited from [recommendationBase](../resources/recommendationbase.md).|
|maxScore|Double|The maximum number of points attainable. Only applies to [recommendations](../resources/recommendation.md) with **category** set to `identitySecureScore`. Inherited from [recommendationBase](../resources/recommendationbase.md).|
|postponeUntilDateTime|DateTimeOffset|The future date and time when the **status** of a postponed [recommendation](../resources/recommendation.md) will be `active` again. Inherited from [recommendationBase](../resources/recommendationbase.md).|
|priority|recommendationPriority|Indicates the time sensitivity for a [recommendation](../resources/recommendation.md) to be completed. Microsoft auto assigns this value. The possible values are: `low`, `medium`, `high`. Inherited from [recommendationBase](../resources/recommendationbase.md). Read-only. <br><br> Supports `$filter`(`eq`).|
|recommendationType|recommendationType|Friendly shortname to identify the [recommendation](../resources/recommendation.md). The possible values are: `adfsAppsMigration`, `enableDesktopSSO`, `enablePHS`, `enableProvisioning`, `switchFromPerUserMFA`, `tenantMFA`, `thirdPartyApps`, `turnOffPerUserMFA`, `useAuthenticatorApp`, `useMyApps`, `staleApps`, `staleAppCreds`, `applicationCredentialExpiry`, `servicePrincipalKeyExpiry`, `adminMFAV2`, `blockLegacyAuthentication`, `integratedApps`, `mfaRegistrationV2`, `pwagePolicyNew`, `passwordHashSync`, `oneAdmin`, `roleOverlap`, `selfServicePasswordReset`, `signinRiskPolicy`, `userRiskPolicy`, `verifyAppPublisher`, `privateLinkForAAD`, `appRoleAssignmentsGroups`, `appRoleAssignmentsUsers`, `managedIdentity`, `overprivilegedApps`, `unknownFutureValue`, `longLivedCredentials`, `aadConnectDeprecated`, `adalToMsalMigration`, `ownerlessApps`, `inactiveGuests`, `aadGraphDeprecationApplication`, `aadGraphDeprecationServicePrincipal`, `mfaServerDeprecation`. Use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `longLivedCredentials` , `aadConnectDeprecated` , `adalToMsalMigration` , `ownerlessApps` , `inactiveGuests` , `aadGraphDeprecationApplication` , `aadGraphDeprecationServicePrincipal` , `mfaServerDeprecation`. Inherited from [recommendationBase](../resources/recommendationbase.md). <br><br> Currently, only a limited number are available. For more information, see [Types of recommendations](recommendations-api-overview.md#types-of-recommendations). Supports `$filter`(`eq`).|
|releaseType|releaseType|The current release type of the recommendation. The possible values are: `preview`, `generallyAvailable`, `unknownFutureValue`. Inherited from [recommendationBase](../resources/recommendationbase.md). |
|remediationImpact|String|Description of the impact on users of the remediation. Only applies to [recommendations](../resources/recommendation.md) with **category** set to `identitySecureScore`. Inherited from [recommendationBase](../resources/recommendationbase.md).|
|status|recommendationStatus|    Indicates the status of the [recommendation](../resources/recommendation.md) based on user or system action. The possible values are: `active`, `completedBySystem`, `completedByUser`, `dismissed`, `postponed`, `unknownFutureValue`, `riskAccepted`, `thirdParty`, `planned`, `alternateMitigation`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `riskAccepted` , `thirdParty` , `planned` , `alternateMitigation`. By default, a recommendation's **status** is set to `active` when the recommendation is first generated. **Status** is set to `completedBySystem` when our service detects that a recommendation which was previously active no longer applies. Inherited from [recommendationBase](../resources/recommendationbase.md). <br><br> Supports `$filter`(`eq`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|impactedResources|[impactedResource](../resources/impactedresource.md) collection|The list of directory objects associated with the [recommendation](../resources/recommendation.md). Inherited from [recommendationBase](../resources/recommendationbase.md).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.recommendation",
  "baseType": "microsoft.graph.recommendationBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.recommendation",
  "id": "String (identifier)",
  "actionSteps": [
    {
      "@odata.type": "microsoft.graph.actionStep"
    }
  ],
  "benefits": "String",
  "category": "String",
  "createdDateTime": "String (timestamp)",
  "currentScore": "Double",
  "displayName": "String",
  "featureAreas": [
    "String"
  ],
  "impactType": "String",
  "impactStartDateTime": "String (timestamp)",
  "insights": "String",
  "lastCheckedDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String",
  "maxScore": "Double",
  "postponeUntilDateTime": "String (timestamp)",
  "priority": "String",
  "status": "String",
  "remediationImpact": "String",
  "recommendationType": "String"
}
```
