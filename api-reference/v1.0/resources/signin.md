---
title: "signIn resource type"
description: "Details user and application sign-in activity for a tenant (directory)."
author: "egreenberg14"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# signIn resource type

Namespace: microsoft.graph

Details user and application sign-in activity for a tenant (directory). You must have a Microsoft Entra ID P1 or P2 license to download sign-in logs by using the Microsoft Graph API. 

The [Microsoft Entra data retention policies](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data) govern the availability of sign-in logs.

## Methods

| Method           | Return Type    |Description|
|:---------------|:--------|:----------|
|[List signIn](../api/signin-list.md) | [signIn](signin.md) |Read the properties and relationships of **signIn** objects.|
|[Get signIn](../api/signin-get.md) | [signIn](signin.md) |Read the properties and relationships of **signIn** object.|

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|appDisplayName|String|App name displayed in the Microsoft Entra admin center. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|appId|String|Unique GUID that represents the app ID in the Microsoft Entra ID. <br/><br/> Supports `$filter` (`eq`).|
|appliedConditionalAccessPolicies|[appliedConditionalAccessPolicy](appliedconditionalaccesspolicy.md) collection|Provides a list of conditional access policies that are triggered by the corresponding sign-in activity. Apps need additional Conditional Access-related privileges to read the details of this property. For more information, see [Viewing applied conditional access (CA) policies in sign-ins](../api/signin-list.md#viewing-applied-conditional-access-ca-policies-in-sign-ins).|
|clientAppUsed|String|Identifies the client used for the sign-in activity. Modern authentication clients include `Browser`, `modern clients`. Legacy authentication clients include `Exchange ActiveSync`, `IMAP`, `MAPI`, `SMTP`, `POP`, and `other clients`. <br/><br/> Supports `$filter` (`eq`).|
|conditionalAccessStatus|conditionalAccessStatus| Reports status of an activated conditional access policy. Possible values are: `success`, `failure`, `notApplied`, and `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`).|
|correlationId|String|The request ID sent from the client when the sign-in is initiated. Used to troubleshoot sign-in activity. <br/><br/> Supports `$filter` (`eq`).|
|createdDateTime|DateTimeOffset|Date and time (UTC) the sign-in was initiated. Example: midnight on Jan 1, 2014 is reported as `2014-01-01T00:00:00Z`. <br/><br/> Supports `$orderby`, `$filter` (`eq`, `le`, and `ge`).|
|deviceDetail|[deviceDetail](devicedetail.md)|Device information from where the sign-in occurred; includes device ID, operating system, and browser. <br/><br/> Supports `$filter` (`eq`, `startsWith`) on **browser** and **operatingSytem** properties. |
|id|String|Unique ID representing the sign-in activity. <br/><br/> Supports `$filter` (`eq`).|
|ipAddress|String|IP address of the client used to sign in. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|isInteractive|Boolean|Indicates whether a sign-in is interactive.|
|location|[signInLocation](signinlocation.md)|Provides the city, state, and country code where the sign-in originated. <br/><br/> Supports `$filter` (`eq`, `startsWith`) on **city**, **state**, and **countryOrRegion** properties.|
|resourceDisplayName|String|Name of the resource the user signed into. <br/><br/> Supports `$filter` (`eq`).|
|resourceId|String|ID of the resource that the user signed into. <br/><br/> Supports `$filter` (`eq`).|
|riskDetail|riskDetail|The reason behind a specific state of a risky user, sign-in, or a risk event. The possible values are `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, `unknownFutureValue`, `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`, `m365DAdminDismissedDetection`, `userChangedPasswordOnPremises`, `adminDismissedRiskForSignIn`, `adminConfirmedAccountSafe`.  You must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`, `m365DAdminDismissedDetection`, `userChangedPasswordOnPremises`, `adminDismissedRiskForSignIn`, `adminConfirmedAccountSafe`.The value `none` means that Microsoft Entra risk detection has not flagged the user or the sign-in as a risky event so far. <br/><br/> Supports `$filter` (`eq`).<br> **Note:** Details for this property are only available for Microsoft Entra ID P2 customers. All other customers are returned `hidden`.|
|riskEventTypes_v2|String collection|The list of risk event types associated with the sign-in. Possible values: `unlikelyTravel`, `anonymizedIPAddress`, `maliciousIPAddress`, `unfamiliarFeatures`, `malwareInfectedIPAddress`, `suspiciousIPAddress`, `leakedCredentials`, `investigationsThreatIntelligence`,  `generic`, or `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|riskLevelAggregated|riskLevel|Aggregated risk level. The possible values are: `none`, `low`, `medium`, `high`, `hidden`, and `unknownFutureValue`. The value `hidden` means the user or sign-in wasn't enabled for Microsoft Entra ID Protection. <br/><br/> Supports `$filter` (`eq`). <br> **Note:** Details for this property are only available for Microsoft Entra ID P2 customers. All other customers are returned `hidden`.|
|riskLevelDuringSignIn|riskLevel|Risk level during sign-in. The possible values are: `none`, `low`, `medium`, `high`, `hidden`, and `unknownFutureValue`. The value `hidden` means the user or sign-in wasn't enabled for Microsoft Entra ID Protection. <br/><br/> Supports `$filter` (`eq`).  <br>**Note:** Details for this property are only available for Microsoft Entra ID P2 customers. All other customers are returned `hidden`.|
|riskState|riskState|Reports status of the risky user, sign-in, or a risk event. The possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`).|
|status|[signInStatus](signinstatus.md)|Sign-in status. Includes the error code and description of the error (if a sign-in failure occurs). <br/><br/> Supports `$filter` (`eq`) on **errorCode** property.|
|userDisplayName|String|Display name of the user that initiated the sign-in. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|userId|String|ID of the user that initiated the sign-in. <br/><br/> Supports `$filter` (`eq`).|
|userPrincipalName|String|User principal name of the user that initiated the sign-in. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|

## Relationships

None.


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.signIn"
}-->
```json
{
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "appDisplayName": "String",
  "appId": "String",
  "ipAddress": "String",
  "clientAppUsed": "String",
  "correlationId": "String",
  "conditionalAccessStatus": "string",
  "appliedConditionalAccessPolicy": [{"@odata.type": "microsoft.graph.appliedConditionalAccessPolicy"}],
  "isInteractive": true,
  "deviceDetail": {"@odata.type": "microsoft.graph.deviceDetail"},
  "location": {"@odata.type": "microsoft.graph.signInLocation"},
  "riskDetail": "string",
  "riskLevelAggregated": "string",
  "riskLevelDuringSignIn": "string",
  "riskState": "string",
  "riskEventTypes": ["string"],
  "riskEventTypes_v2": ["String"],
  "resourceDisplayName": "string",
  "resourceId": "string",
  "status": {"@odata.type": "microsoft.graph.signInStatus"},
  "userDisplayName": "string",
  "userId": "string",
  "userPrincipalName": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "signIn resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
