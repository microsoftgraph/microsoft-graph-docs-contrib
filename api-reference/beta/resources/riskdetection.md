---
title: "riskDetection resource type"
description: "Represents all risk detections in AzureAD tenants."
author: "tracyshi"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---
---
title: "riskDetection resource type"
description: "Represents all risk detections in AzureAD tenants."
author: "tracyshi"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---
# riskDetection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about a detected risk in a Microsoft Entra tenant. 

Microsoft Entra ID Protection continually evaluates [user risks](riskyuser.md) and app or user [sign-in](signin.md) risks based on various signals and machine learning. This API provides programmatic access to all risk detections in your Microsoft Entra environment.

For more information about risk detection, see [Microsoft Entra ID Protection](/entra/id-protection/overview-identity-protection) and [What are risk detections?](/entra/id-protection/concept-identity-protection-risks)

>[!NOTE]
> The availability of risk detection data is governed by the [Microsoft Entra data retention policies](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).

## Methods

| Method   | Return Type|Description|
|:---------------|:--------|:----------|
|[List riskDetection](../api/riskdetection-list.md) | [riskDetection](riskdetection.md) collection|List risk detections and their properties.|
|[Get riskDetection](../api/riskdetection-get.md) | [riskDetection](riskdetection.md)|Get a specific risky detection and its properties.|

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|activity|activityType|Indicates the activity type the detected risk is linked to. The possible values are `signin`, `user`, `unknownFutureValue`. |
|activityDateTime|DateTimeOffset|Date and time that the risky activity occurred. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|additionalInfo|string|Additional information associated with the risk detection in JSON format. |
|correlationId|string|Correlation ID of the sign-in associated with the risk detection. This property is null if the risk detection is not associated with a sign-in. |
|detectedDateTime|DateTimeOffset|Date and time that the risk was detected. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z` |
|detectionTimingType|riskDetectionTimingType|Timing of the detected risk (real-time/offline). The possible values are `notDefined`, `realtime`, `nearRealtime`, `offline`, `unknownFutureValue`. |
|id|string|Unique ID of the risk detection. |
|ipAddress|string|Provides the IP address of the client from where the risk occurred. |
|lastUpdatedDateTime|DateTimeOffset|Date and time that the risk detection was last updated. |
|location|[signInLocation](signinlocation.md)|Location of the sign-in. |
|requestId|string|Request ID of the sign-in associated with the risk detection. This property is null if the risk detection is not associated with a sign-in.|
|riskEventType|String|The type of risk event detected. The possible values are `adminConfirmedUserCompromised`, `anomalousUserActivity`, `anonymizedIPAddress`, `generic`, `investigationsThreatIntelligence`, `investigationsThreatIntelligenceSigninLinked`, `suspiciousSendingPatterns`, `leakedCredentials`, `maliciousIPAddress`, `maliciousIPAddressValidCredentialsBlockedIP`, `malwareInfectedIPAddress`, `mcasImpossibleTravel`, `mcasSuspiciousInboxManipulationRules`, `suspiciousAPITraffic`, `suspiciousIPAddress`,   `unfamiliarFeatures`, `unlikelyTravel`, `userReportedSuspiciousActivity`. <br/> For more information about each value, see [Risk types and detection](/entra/id-protection/concept-identity-protection-risks#risk-types-and-detection).|
|riskDetail|riskDetail|Details of the detected risk. The possible values are: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, `unknownFutureValue`, `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`, `m365DAdminDismissedDetection`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `adminConfirmedServicePrincipalCompromised` , `adminDismissedAllRiskForServicePrincipal` , `m365DAdminDismissedDetection`. <br/><br />**Note:** Details for this property are only available for Microsoft Entra ID P2 customers. P1 customers will be returned `hidden`.|
|riskLevel|riskLevel|Level of the detected risk. The possible values are `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. <br />**Note:** Details for this property are only available for Microsoft Entra ID P2 customers. P1 customers will be returned `hidden`.|
|riskState|riskState|The state of a detected risky user or sign-in. The possible values are `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, and `unknownFutureValue`. |
|source|string|Source of the risk detection. For example, `activeDirectory`. |
|tokenIssuerType|tokenIssuerType|Indicates the type of token issuer for the detected sign-in risk. The possible values are `AzureAD`, `ADFederationServices`, and `unknownFutureValue`.|
|userId|string|Unique ID of the user.  The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|userDisplayName|string|Name of the user. |
|userPrincipalName|string|The user principal name (UPN) of the user. |
|riskType (deprecated)|riskEventType|List of risk event types.<br />**Note:** This property is deprecated. Use **riskEventType** instead. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.riskDetection"
}-->

```json
{
 "id": "string",
    "requestId": "string",
    "correlationId": "string",
    "riskType": {"@odata.type": "microsoft.graph.riskEventType"},
    "riskState": {"@odata.type": "microsoft.graph.riskState"},
    "riskLevel": {"@odata.type": "microsoft.graph.riskLevel"},
    "riskDetail": {"@odata.type": "microsoft.graph.riskDetail"},
    "source": "string",
    "detectionTimingType": {"@odata.type": "microsoft.graph.riskDetectionTimingType"},
    "activity": {"@odata.type": "microsoft.graph.riskUserActivity"},
    "tokenIssuerType": {"@odata.type": "microsoft.graph.tokenIssuerType"},
    "ipAddress": "string",
    "location": {"@odata.type": "microsoft.graph.signInLocation"},
    "activityDateTime": "string (timestamp)",
    "detectedDateTime": "string (timestamp)",
    "lastUpdatedDateTime": "string (timestamp)",
    "userId": "string",
    "userDisplayName": "string",
    "userPrincipalName": "string",
    "additionalInfo": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "riskDetections resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
