---
title: "riskDetection resource type"
description: "Represents all risk detections in AzureAD tenants."
author: "cloudhandler"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---
# riskDetections resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents risk detections in Azure AD tenants. Azure AD continually evaluates user and sign-in risk based on various signals and machine learning. This API provides programmatic access to all risk detections in your Azure AD environment.

For more information about risk events, see [Azure Active Directory Identity Protection](https://azure.microsoft.com/en-us/documentation/articles/active-directory-identityprotection/).

[!NOTE] You must have an Azure AD Premium P2 license to use the risk detection API.

## Methods

| Method   | Return Type|Description|
|:---------------|:--------|:----------|
|[List riskDetections](../api/riskdetections-list.md) | [riskDetection](riskDetection.md) collection|List risk detections and their properties.|
|[Get riskDetections](../api/riskdeetections-get.md) | [riskDetection](riskdetection.md)|Get a specific risky detection and its properties.|

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|`id`|`string`|Unique id of the risk detection |
|`requestId`|`string`|Request id of the sign in associated with the risk detection |
|`correlationId`|`string`|Correlation id of the sign in associated with the risk detection |
|`riskType`|`riskEventType`|Type of risk detection |
|`riskState`|`riskState`|State of the risk detection. The possible values are none, confirmedSafe, remediated, atRisk, unknownFutureValue. |
|`riskLevel`|`riskLevel`|Level of the risk detection. The possible values are low, medium, high, hidden, none, unknownFutureValue. |
|`riskDetail`|`riskDetail`|Detail of the risk detection. The possible values are none, adminGeneratedTemporaryPassword, userPerformedSecuredPasswordChange, userPerformedSecuredPasswordReset, adminConfirmedSigninSafe, aiConfirmedSigninSafe, userPassedMFADrivenByRiskBasedPolicy, adminDismissedAllRiskForUser, adminConfirmedSigninCompromised, hidden, adminConfirmedUserCompromised, unknownFutureValue. |
|`source`|`string`|Source of the risk detection |
|`detectionTimingType`|`riskDetectionTimingType`|Timing of risk detection (real-time/offline). The possible values are notDefined, realtime, nearrealtime, offline, unknownfuturevalue. |
|`activity`|`activityType`|Indicates the activity type the risk detection is linked to. The possible values are signin, user, unknownfuturevalue. |
|`tokenIssuerType`|`tokenIssuerType`|Indicates the type of token issuer of the risk detection (such as AD FS, Azure AD) |
|`ipAddress`|`string`|IP Address of the risk detection |
|`location`|`signInLocation`|Location of the sign in |
|`activityDateTime`|`datetime`|Date and time of the activity that the detection was generated from |
|`detectedDateTime`|`datetime`|Date and time of the risk event creation |
|`lastUpdatedDateTime`|`datetime`|Date and time of the last updated risk event |
|`userId`|`string`|Object ID of the user |
|`userDisplayName`|`string`|Name of the user |
|`userPrincipalName`|`string`|UPN of the user |
|`additionalInfo`|`string`|Additional information associated with the risk detection in json format |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.riskDetections"
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
    "activityDateTime": "datetime",
    "detectedDateTime": "datetime",
    "lastUpdatedDateTime": "datetime",
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
