---
title: "signIn resource type"
description: "Details user and application sign-in activity for a tenant (directory)."
author: "besiler"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# signIn resource type

Namespace: microsoft.graph

Details user and application sign-in activity for a tenant (directory). You must have an Azure AD Premium P1 or P2 license to download sign-in logs using the Microsoft Graph API. 

The availability of sign-in logs is governed by the [Azure AD data retention policies](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).

## Methods

| Method           | Return Type    |Description|
|:---------------|:--------|:----------|
|[List signIn](../api/signin-list.md) | [signIn](signin.md) |Read properties and relationships of signIn objects.|
|[Get signIn](../api/signin-get.md) | [signIn](signin.md) |Read properties and relationships of signIn object.|

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|appDisplayName|String|App name displayed in the Azure Portal. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|appId|String|Unique GUID representing the app ID in the Azure Active Directory. <br/><br/> Supports `$filter` (`eq`).|
|appliedConditionalAccessPolicies|[appliedConditionalAccessPolicy](appliedconditionalaccesspolicy.md) collection|Provides a list of conditional access policies that are triggered by the corresponding sign-in activity.|
|clientAppUsed|String|Identifies the client used for the sign-in activity. Modern authentication clients include `Browser`, `modern clients`. Legacy authentication clients include `Exchange ActiveSync`, `IMAP`, `MAPI`, `SMTP`, `POP`, and `other clients`. <br/><br/> Supports `$filter` (`eq`).|
|conditionalAccessStatus|conditionalAccessStatus| Reports status of an activated conditional access policy. Possible values are: `success`, `failure`, `notApplied`, and `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`).|
|correlationId|String|The request ID sent from the client when the sign-in is initiated; used to troubleshoot sign-in activity. <br/><br/> Supports `$filter` (`eq`).|
|createdDateTime|DateTimeOffset|Date and time (UTC) the sign-in was initiated. Example: midnight on Jan 1, 2014 is reported as `2014-01-01T00:00:00Z`. <br/><br/> Supports `$orderby`, `$filter` (`eq`, `le`, and `ge`).|
|deviceDetail|[deviceDetail](devicedetail.md)|Device information from where the sign-in occurred; includes device ID, operating system, and browser. <br/><br/> Supports `$filter` (`eq`, `startsWith`) on **browser** and **operatingSytem** properties. |
|id|String|Unique ID representing the sign-in activity. <br/><br/> Supports `$filter` (`eq`).|
|ipAddress|String|IP address of the client used to sign in. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|isInteractive|Boolean|Indicates if a sign-in is interactive or not.|
|location|[signInLocation](signinlocation.md)|Provides the city, state, and country code where the sign-in originated. <br/><br/> Supports `$filter` (`eq`, `startsWith`) on **city**, **state**, and **countryOrRegion** properties.|
|resourceDisplayName|String|Name of the resource the user signed into. <br/><br/> Supports `$filter` (`eq`).|
|resourceId|String|ID of the resource that the user signed into. <br/><br/> Supports `$filter` (`eq`).|
|riskDetail|riskDetail|Provides the 'reason' behind a specific state of a risky user, sign-in or a risk event. The possible values are: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `unknownFutureValue`. The value `none` means that no action has been performed on the user or sign-in so far.  Supports `$filter` (`eq`).<br>**Note:** Details for this property require an Azure AD Premium P2 license. Other licenses return the value `hidden`.|
|riskEventTypes|riskEventType collection|Risk event types associated with the sign-in. The possible values are: `unlikelyTravel`, `anonymizedIPAddress`, `maliciousIPAddress`, `unfamiliarFeatures`, `malwareInfectedIPAddress`, `suspiciousIPAddress`, `leakedCredentials`, `investigationsThreatIntelligence`,  `generic`, and `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`).|
|riskEventTypes_v2|String collection|The list of risk event types associated with the sign-in. Possible values: `unlikelyTravel`, `anonymizedIPAddress`, `maliciousIPAddress`, `unfamiliarFeatures`, `malwareInfectedIPAddress`, `suspiciousIPAddress`, `leakedCredentials`, `investigationsThreatIntelligence`,  `generic`, or `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|riskLevelAggregated|riskLevel|Aggregated risk level. The possible values are: `none`, `low`, `medium`, `high`, `hidden`, and `unknownFutureValue`. The value `hidden` means the user or sign-in was not enabled for Azure AD Identity Protection. <br/><br/> Supports `$filter` (`eq`). <br> **Note:** Details for this property are only available for Azure AD Premium P2 customers. All other customers will be returned `hidden`.|
|riskLevelDuringSignIn|riskLevel|Risk level during sign-in. The possible values are: `none`, `low`, `medium`, `high`, `hidden`, and `unknownFutureValue`. The value `hidden` means the user or sign-in was not enabled for Azure AD Identity Protection. <br/><br/> Supports `$filter` (`eq`).  <br>**Note:** Details for this property are only available for Azure AD Premium P2 customers. All other customers will be returned `hidden`.|
|riskState|riskState|Reports status of the risky user, sign-in, or a risk event. The possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`).|
|status|[signInStatus](signinstatus.md)|Sign-in status. Includes the error code and description of the error (in case of a sign-in failure). <br/><br/> Supports `$filter` (`eq`) on **errorCode** property.|
|userDisplayName|String|Display name of the user that initiated the sign-in. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|userId|String|ID of the user that initiated the sign-in. <br/><br/> Supports `$filter` (`eq`).|
|userPrincipalName|String|User principal name of the user that initiated the sign-in. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|

## Relationships

None


## JSON representation

Here is a JSON representation of the resource.

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

