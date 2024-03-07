---
title: "riskyUser resource type"
description: "risky users item"
author: "tracyshi"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# riskyUser resource type

Namespace: microsoft.graph

Represents Microsoft Entra users who are at risk. Microsoft Entra ID continually evaluates user risk based on various signals and machine learning. This API provides programmatic access to all at-risk users in your Microsoft Entra ID.

For more information about risk events, see [Microsoft Entra ID Protection](/azure/active-directory/identity-protection/overview-identity-protection).

>[!NOTE]
> 1. Using the riskyUsers API requires a Microsoft Entra ID P2 license.
> 2. The availability of risky user data is governed by the [Microsoft Entra data retention policies](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List riskyUsers](../api/riskyuser-list.md)|[riskyUser](../resources/riskyuser.md) collection|Get a list of the **riskyUser** objects and their properties.|
|[Get riskyUser](../api/riskyuser-get.md)|[riskyUser](../resources/riskyuser.md)|Read the properties and relationships of a **riskyUser** object.|
|[Dismiss a riskyUser](../api/riskyuser-dismiss.md)|None|Dismiss the risk of one or more **riskyUser** objects. |
|[Confirm a riskyUser as compromised](../api/riskyuser-confirmcompromised.md)|None|Confirm one or more **riskyUser** objects as compromised.|
|[List history](../api/riskyuser-list-history.md)|[riskyUserHistoryItem](../resources/riskyuserhistoryitem.md) collection|Get the **riskyUserHistoryItems** from the history navigation property.|
|[Get history](../api/riskyuser-get-riskyuserhistoryitem.md)|[riskyUserHistoryItem](../resources/riskyuserhistoryitem.md)|Read the properties and relationships of a [riskyUserHistoryItem](../resources/riskyuserhistoryitem.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique ID of the user at risk.|
|isDeleted|Boolean|Indicates whether the user is deleted. Possible values are: `true`, `false`.|
|isProcessing|Boolean|Indicates whether the backend is processing a user's risky state.|
|riskLastUpdatedDateTime|DateTimeOffset|The date and time that the risky user was last updated. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|riskLevel|riskLevel|Level of the detected risky user. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskState|riskState|State of the user's risk. Possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.|
|riskDetail|riskDetail| The possible values are `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, `unknownFutureValue`, `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`, `m365DAdminDismissedDetection`, `userChangedPasswordOnPremises`, `adminDismissedRiskForSignIn`, `adminConfirmedAccountSafe`. You must use the `Prefer: include-unknown-enum-members` request header to get the following value or values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`, `m365DAdminDismissedDetection`, `userChangedPasswordOnPremises`, `adminDismissedRiskForSignIn`, `adminConfirmedAccountSafe`.|
|userDisplayName|String|Risky user display name.|
|userPrincipalName|String|Risky user principal name.|


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|history|[riskyUserHistoryItem](../resources/riskyuserhistoryitem.md) collection|	The activity related to user risk level change|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.riskyUser",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.riskyUser",
  "id": "String (identifier)",
  "isDeleted": "Boolean",
  "isProcessing": "Boolean",
  "riskLastUpdatedDateTime": "String (timestamp)",
  "riskLevel": "String",
  "riskState": "String",
  "riskDetail": "String",
  "userDisplayName": "String",
  "userPrincipalName": "String"
}
```
