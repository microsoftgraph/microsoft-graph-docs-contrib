---
title: "riskyUser resource type"
description: "Represents Microsoft Entra users who are at risk. Microsoft Entra ID Protection continually evaluates user risk based on various signals and machine learning. This API provides programmatic access to all at-risk users in your Azure AD."
author: "tracyshi"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
ms.date: 08/01/2024
---

# riskyUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Microsoft Entra users who are at risk. Microsoft Entra ID Protection continually evaluates user risk based on various signals and machine learning. This API provides programmatic access to all at-risk users in your Microsoft Entra tenant.

For more information about risk events, see [Microsoft Entra ID Protection](/azure/active-directory/identity-protection/overview-identity-protection).

>[!NOTE]
> 1. Using the riskyUsers API requires a Microsoft Entra ID P2 license.
> 2. The availability of risky user data is governed by the [Microsoft Entra data retention policies](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).

## Methods

| Method   | Return Type|Description|
|:---------------|:--------|:----------|
|[List](../api/riskyusers-list.md) | [riskyUser](riskyuser.md) collection|Get a list of the **riskyUser** objects and their properties.|
|[Get](../api/riskyusers-get.md) | [riskyUser](riskyuser.md)|Read the properties and relationships of a **riskyUser** object.|
|[Confirm compromised](../api/riskyusers-confirmcompromised.md)|None |Confirm one or more **riskyUser** objects as compromised.|
|[Confirm safe](../api/riskyuser-confirmsafe.md)|None|Confirm one or more **riskyUser** objects as safe.|
|[Dismiss](../api/riskyusers-dismiss.md)|None | Dismiss the risk of one or more **riskyUser** objects.|
|[List history](../api/riskyuser-list-history.md) | [riskyUserHistoryItem](riskyuserhistoryitem.md) collection|Get the **riskyUserHistoryItems** from the history navigation property.|

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|id|string|Unique ID of the user at risk.|
|isDeleted|Boolean|Indicates whether the user is deleted. Possible values are: `true`, `false`.|
|isProcessing|Boolean|Indicates whether a user's risky state is being processed by the backend.|
|riskLastUpdatedDateTime|DateTimeOffset|The date and time that the risky user was last updated.  The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|riskLevel|riskLevel| Level of the detected risky user. The possible values are `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.  |
|riskState|riskState| State of the user's risk. Possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.  |
|riskDetail|riskDetail| The possible values are `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, 
`unknownFutureValue`, `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`, `m365DAdminDismissedDetection`, `userChangedPasswordOnPremises`, `adminDismissedRiskForSignIn`, `adminConfirmedAccountSafe`, `microsoftRevokedSessions`.  Use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`, `m365DAdminDismissedDetection`, `userChangedPasswordOnPremises`, `adminDismissedRiskForSignIn`, `adminConfirmedAccountSafe`, `microsoftRevokedSessions`.|
|userDisplayName|string|Risky user display name.|
|userPrincipalName|string|Risky user principal name.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.riskyUser"
}-->

```json
{
"id": "string",
"riskLastUpdatedDateTime": "dateTimeOffset",
"isProcessing": "Boolean",
"isDeleted": "Boolean",
"riskDetail":  "string",
"riskLevel":  "string",
"riskState":  "string",
"userDisplayName": "string",
"userPrincipalName": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "riskyusers resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
