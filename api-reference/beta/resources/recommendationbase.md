---
title: "recommendationBase resource type"
description: "An abstract type that exposes the properties for a recommendation. "
author: "ddeeps2610"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 04/09/2024
---

# recommendationBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that exposes the properties for the [recommendation](../resources/recommendation.md) resource type.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSteps|[actionStep](../resources/actionstep.md) collection|List of actions to take to complete a [recommendation](../resources/recommendation.md).|
|benefits|String|An explanation of why [completing the recommendation](../api/recommendation-complete.md) will benefit you. Corresponds to the *Value* section of a recommendation shown in the Microsoft Entra admin center.|
|category|recommendationCategory|Indicates the category of intelligent guidance that the recommendation falls under. The possible values are: `identityBestPractice`, `identitySecureScore`, `unknownFutureValue`, `mdiSecureScore`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `mdiSecureScore`.|
|createdDateTime|DateTimeOffset|The date and time when the [recommendation](../resources/recommendation.md) was detected as applicable to your directory.|
|currentScore|Double|The number of points the tenant has attained. Only applies to [recommendations](../resources/recommendation.md) with **category** set to `identitySecureScore`.|
|displayName|String|The title of the [recommendation](../resources/recommendation.md).|
|featureAreas|recommendationFeatureAreas collection|The directory feature that the [recommendation](../resources/recommendation.md) is related to. |
|id|String|The unique identifier for the [recommendation](../resources/recommendation.md) object generated for your tenant. This is a concatenation of your tenant ID and a Microsoft Entra ID-assigned nickname for the recommendation. For example, `7918d4b5-0442-4a97-be2d-36f9f9962ece_Microsoft.Identity.IAM.Insights.ThirdPartyApps`|
|impactStartDateTime|DateTimeOffset|The future date and time when a [recommendation](../resources/recommendation.md) should be completed.|
|impactType|String|    Indicates the scope of impact of a recommendation. `tenantLevel` indicates that the recommendation impacts the whole tenant. Other possible values include `users`, `apps`.|
|insights|String|Describes why a recommendation uniquely applies to your directory. Corresponds to the *Description* section of a recommendation shown in the Microsoft Entra admin center.|
|lastCheckedDateTime|DateTimeOffset|The most recent date and time a [recommendation](../resources/recommendation.md) was deemed applicable to your directory.|
|lastModifiedBy|String|Name of the user who last updated the **status** of the [recommendation](../resources/recommendation.md).|
|lastModifiedDateTime|DateTimeOffset|    The date and time the **status** of a [recommendation](../resources/recommendation.md) was last updated.|
|maxScore|Double|The maximum number of points attainable. Only applies to [recommendations](../resources/recommendation.md) with **category** set to `identitySecureScore`.|
|postponeUntilDateTime|DateTimeOffset|The future date and time when the **status** of a postponed [recommendation](../resources/recommendation.md) will be `active` again.|
|priority|recommendationPriority|Indicates the time sensitivity for a [recommendation](../resources/recommendation.md) to be completed. Microsoft auto assigns this value. The possible values are: `low`, `medium`, `high`. |
|recommendationType|recommendationType|Friendly shortname to identify the [recommendation](../resources/recommendation.md). The possible values are: `adfsAppsMigration`, `enableDesktopSSO`, `enablePHS`, `enableProvisioning`, `switchFromPerUserMFA`, `tenantMFA`, `thirdPartyApps`, `turnOffPerUserMFA`, `useAuthenticatorApp`, `useMyApps`, `staleApps`, `staleAppCreds`, `applicationCredentialExpiry`, `servicePrincipalKeyExpiry`, `adminMFAV2`, `blockLegacyAuthentication`, `integratedApps`, `mfaRegistrationV2`, `pwagePolicyNew`, `passwordHashSync`, `oneAdmin`, `roleOverlap`, `selfServicePasswordReset`, `signinRiskPolicy`, `userRiskPolicy`, `verifyAppPublisher`, `privateLinkForAAD`, `appRoleAssignmentsGroups`, `appRoleAssignmentsUsers`, `managedIdentity`, `overprivilegedApps`, `unknownFutureValue`, `longLivedCredentials`, `aadConnectDeprecated`, `adalToMsalMigration`, `ownerlessApps`, `inactiveGuests`, `aadGraphDeprecationApplication`, `aadGraphDeprecationServicePrincipal`, `mfaServerDeprecation`. Use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `longLivedCredentials` , `aadConnectDeprecated` , `adalToMsalMigration` , `ownerlessApps` , `inactiveGuests` , `aadGraphDeprecationApplication` , `aadGraphDeprecationServicePrincipal` , `mfaServerDeprecation`. |
|releaseType|releaseType|The current release type of the recommendation. The possible values are: `preview`, `generallyAvailable`, `unknownFutureValue`. |
|remediationImpact|String|Description of the impact on users of the remediation. Only applies to [recommendations](../resources/recommendation.md) with **category** set to `identitySecureScore`.|
|requiredLicenses|requiredLicenses|The required licenses to view the recommendation. The possible values are: `notApplicable`, `microsoftEntraIdFree`, `microsoftEntraIdP1`, `microsoftEntraIdP2`, `microsoftEntraIdGovernance`, `microsoftEntraWorkloadId`, `unknownFutureValue`, `aatp`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `aatp`.|
|status|recommendationStatus|    Indicates the status of the [recommendation](../resources/recommendation.md) based on user or system action. The possible values are: `active`, `completedBySystem`, `completedByUser`, `dismissed`, `postponed`, `unknownFutureValue`, `riskAccepted`, `thirdParty`, `planned`, `alternateMitigation`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `riskAccepted` , `thirdParty` , `planned` , `alternateMitigation`. By default, a recommendation's **status** is set to `active` when the recommendation is first generated. **Status** is set to `completedBySystem` when our service detects that a recommendation which was previously active no longer applies. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|impactedResources|[impactedResource](../resources/impactedresource.md) collection|The list of directory objects associated with the [recommendation](../resources/recommendation.md). |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.recommendationBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.recommendationBase",
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
  "releaseType": "String",
  "requiredLicenses": "String",
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
