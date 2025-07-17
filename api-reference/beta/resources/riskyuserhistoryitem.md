---
title: "riskyUserHistoryItem resource type"
description: "Represents the risk history of a Microsoft Entra user as determined by Microsoft Entra ID Protection."
author: "tracyshi"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# riskyUserHistoryItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Represents the risk history of a Microsoft Entra user as determined by Microsoft Entra ID Protection.

Inherits from [riskyUser](../resources/riskyuser.md).

>[!NOTE]
> 1. Using this API requires a Microsoft Entra ID P2 license.
> 2. The availability of risk history data is governed by the [Microsoft Entra data retention policies](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).

## Methods

| Method   | Return Type|Description|
|:---------------|:--------|:----------|
|[List history](../api/riskyuser-list-history.md) | [riskyUserHistoryItem](riskyuserhistoryitem.md) collection|Get the risk history of a Microsoft Entra user.|


## Properties

| Property       | Type    | Description |
|:---------------|:--------|:------------|
|activity|[riskUserActivity](../resources/riskuseractivity.md)|The activity related to user risk level change.|
|id|String|The unique identifier for the **riskyUserHistoryItem** object. Inherited from [entity](../resources/entity.md).|
|initiatedBy|String|The ID of actor that does the operation.|
|isDeleted|Boolean|Indicates whether the user is deleted. Inherited from [riskyUser](../resources/riskyuser.md).|
|isProcessing|Boolean|Indicates whether a user's risky state is being processed by the backend. Inherited from [riskyUser](../resources/riskyuser.md).|
|riskDetail|riskDetail|Details of the detected risk. Inherited from [riskyUser](../resources/riskyuser.md). Possible values are: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, `unknownFutureValue`.|
|riskLastUpdatedDateTime|DateTimeOffset|The date and time when the risky user was last updated. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [riskyUser](../resources/riskyuser.md).|
|riskLevel|riskLevel|Level of the detected risky user. Inherited from [riskyUser](../resources/riskyuser.md). Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskState|riskState|State of the user's risk. Inherited from [riskyUser](../resources/riskyuser.md). Possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.|
|userDisplayName|String|Risky user display name. Inherited from [riskyUser](../resources/riskyuser.md).|
|userId|String|The ID of the user.|
|userPrincipalName|String|Risky user principal name. Inherited from [riskyUser](../resources/riskyuser.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|history|[riskyUserHistoryItem](../resources/riskyuserhistoryitem.md) collection| The activity related to user risk level change. Inherited from [riskyUser](../resources/riskyuser.md).|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@odata.type": "microsoft.graph.riskyUserHistoryItem",
  "baseType": "microsoft.graph.riskyUser"
}-->

```json
{
    "userId": "string",
    "initiatedBy": "string",
    "activity": {"@odata.type": "microsoft.graph.riskUserActivity"}
}
```


<!--
{
  "type": "#page.annotation",
  "description": "riskyUserHistoryItem resource type",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
   
  ]
}
-->
