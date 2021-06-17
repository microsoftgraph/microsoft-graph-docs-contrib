---
title: "Create restrictedSignIn"
description: "Create a new restrictedSignIn object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create restrictedSignIn
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new restrictedSignIn object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /auditLogs/restrictedSignIns
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [restrictedSignIn](../resources/restrictedsignin.md) object.

The following table shows the properties that are required when you create the [restrictedSignIn](../resources/restrictedsignin.md).

|Property|Type|Description|
|:---|:---|:---|
|alternateSignInName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|appDisplayName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|appId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|appliedConditionalAccessPolicies|[Microsoft.AAD.Reporting.appliedConditionalAccessPolicy](../resources/appliedconditionalaccesspolicy.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|authenticationDetails|[Microsoft.AAD.Reporting.authenticationDetail](../resources/authenticationdetail.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|authenticationMethodsUsed|String collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|authenticationProcessingDetails|[Microsoft.AAD.Reporting.keyValue](../resources/keyvalue.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|authenticationRequirement|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|authenticationRequirementPolicies|[Microsoft.AAD.Reporting.authenticationRequirementPolicy](../resources/authenticationrequirementpolicy.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|autonomousSystemNumber|Int32|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|clientAppUsed|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|conditionalAccessStatus|conditionalAccessStatus|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `success`, `failure`, `notApplied`, `unknownFutureValue`.|
|correlationId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|crossTenantAccessType|signInAccessType|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `none`, `b2bCollaboration`, `b2bDirectConnect`, `microsoftSupport`, `serviceProvider`, `unknownFutureValue`.|
|deviceDetail|[Microsoft.AAD.Reporting.deviceDetail](../resources/devicedetail.md)|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|flaggedForReview|Boolean|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|id|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|homeTenantId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|isInteractive|Boolean|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|isTenantRestricted|Boolean|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|ipAddress|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|ipAddressFromResourceProvider|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|location|[Microsoft.AAD.Reporting.signInLocation](../resources/signinlocation.md)|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|mfaDetail|[Microsoft.AAD.Reporting.mfaDetail](../resources/mfadetail.md)|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|networkLocationDetails|[Microsoft.AAD.Reporting.networkLocationDetail](../resources/networklocationdetail.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|originalRequestId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|privateLinkDetails|[Microsoft.AAD.Reporting.privateLinkDetails](../resources/privatelinkdetails.md)|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|processingTimeInMilliseconds|Int32|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|riskDetail|riskDetail|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, `unknownFutureValue`.|
|riskEventTypes|riskEventType collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `unlikelyTravel`, `anonymizedIPAddress`, `maliciousIPAddress`, `unfamiliarFeatures`, `malwareInfectedIPAddress`, `suspiciousIPAddress`, `leakedCredentials`, `investigationsThreatIntelligence`, `generic`, `adminConfirmedUserCompromised`, `mcasImpossibleTravel`, `mcasSuspiciousInboxManipulationRules`, `investigationsThreatIntelligenceSigninLinked`, `maliciousIPAddressValidCredentialsBlockedIP`, `unknownFutureValue`.|
|riskEventTypes_v2|String collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|riskLevelAggregated|riskLevel|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskLevelDuringSignIn|riskLevel|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskState|riskState|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.|
|resourceDisplayName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|resourceId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|resourceTenantId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|servicePrincipalCredentialKeyId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|servicePrincipalCredentialThumbprint|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|servicePrincipalId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|servicePrincipalName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|sessionLifetimePolicies|[Microsoft.AAD.Reporting.sessionLifetimePolicy](../resources/sessionlifetimepolicy.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|signInEventTypes|String collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|signInIdentifier|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|signInIdentifierType|signInIdentifierType|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `userPrincipalName`, `phoneNumber`, `proxyAddress`, `qrCode`, `onPremisesUserPrincipalName`, `unknownFutureValue`.|
|status|[Microsoft.AAD.Reporting.signInStatus](../resources/signinstatus.md)|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|tokenIssuerName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|tokenIssuerType|tokenIssuerType|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `AzureAD`, `ADFederationServices`, `UnknownFutureValue`.|
|userAgent|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|userDisplayName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|userId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|userPrincipalName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md)|
|userType|signInUserType|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `member`, `guest`, `unknownFutureValue`.|
|targetTenantId|Guid|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [restrictedSignIn](../resources/restrictedsignin.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_restrictedsignin_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/auditLogs/restrictedSignIns
Content-Type: application/json
Content-length: 2645

{
  "@odata.type": "#Microsoft.AAD.Reporting.restrictedSignIn",
  "alternateSignInName": "String",
  "appDisplayName": "String",
  "appId": "String",
  "appliedConditionalAccessPolicies": [
    {
      "@odata.type": "microsoft.graph.appliedConditionalAccessPolicy"
    }
  ],
  "authenticationDetails": [
    {
      "@odata.type": "microsoft.graph.authenticationDetail"
    }
  ],
  "authenticationMethodsUsed": [
    "String"
  ],
  "authenticationProcessingDetails": [
    {
      "@odata.type": "microsoft.graph.keyValue"
    }
  ],
  "authenticationRequirement": "String",
  "authenticationRequirementPolicies": [
    {
      "@odata.type": "microsoft.graph.authenticationRequirementPolicy"
    }
  ],
  "autonomousSystemNumber": "Integer",
  "clientAppUsed": "String",
  "conditionalAccessStatus": "String",
  "correlationId": "String",
  "crossTenantAccessType": "String",
  "deviceDetail": {
    "@odata.type": "microsoft.graph.deviceDetail"
  },
  "flaggedForReview": "Boolean",
  "homeTenantId": "String",
  "isInteractive": "Boolean",
  "isTenantRestricted": "Boolean",
  "ipAddress": "String",
  "ipAddressFromResourceProvider": "String",
  "location": {
    "@odata.type": "microsoft.graph.signInLocation"
  },
  "mfaDetail": {
    "@odata.type": "microsoft.graph.mfaDetail"
  },
  "networkLocationDetails": [
    {
      "@odata.type": "microsoft.graph.networkLocationDetail"
    }
  ],
  "originalRequestId": "String",
  "privateLinkDetails": {
    "@odata.type": "microsoft.graph.privateLinkDetails"
  },
  "processingTimeInMilliseconds": "Integer",
  "riskDetail": "String",
  "riskEventTypes": [
    "String"
  ],
  "riskEventTypes_v2": [
    "String"
  ],
  "riskLevelAggregated": "String",
  "riskLevelDuringSignIn": "String",
  "riskState": "String",
  "resourceDisplayName": "String",
  "resourceId": "String",
  "resourceTenantId": "String",
  "servicePrincipalCredentialKeyId": "String",
  "servicePrincipalCredentialThumbprint": "String",
  "servicePrincipalId": "String",
  "servicePrincipalName": "String",
  "sessionLifetimePolicies": [
    {
      "@odata.type": "microsoft.graph.sessionLifetimePolicy"
    }
  ],
  "signInEventTypes": [
    "String"
  ],
  "signInIdentifier": "String",
  "signInIdentifierType": "String",
  "status": {
    "@odata.type": "microsoft.graph.signInStatus"
  },
  "tokenIssuerName": "String",
  "tokenIssuerType": "String",
  "userAgent": "String",
  "userDisplayName": "String",
  "userId": "String",
  "userPrincipalName": "String",
  "userType": "String",
  "targetTenantId": "Guid"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.AAD.Reporting.restrictedSignIn"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.AAD.Reporting.restrictedSignIn",
  "alternateSignInName": "String",
  "appDisplayName": "String",
  "appId": "String",
  "appliedConditionalAccessPolicies": [
    {
      "@odata.type": "microsoft.graph.appliedConditionalAccessPolicy"
    }
  ],
  "authenticationDetails": [
    {
      "@odata.type": "microsoft.graph.authenticationDetail"
    }
  ],
  "authenticationMethodsUsed": [
    "String"
  ],
  "authenticationProcessingDetails": [
    {
      "@odata.type": "microsoft.graph.keyValue"
    }
  ],
  "authenticationRequirement": "String",
  "authenticationRequirementPolicies": [
    {
      "@odata.type": "microsoft.graph.authenticationRequirementPolicy"
    }
  ],
  "autonomousSystemNumber": "Integer",
  "clientAppUsed": "String",
  "conditionalAccessStatus": "String",
  "correlationId": "String",
  "createdDateTime": "String (timestamp)",
  "crossTenantAccessType": "String",
  "deviceDetail": {
    "@odata.type": "microsoft.graph.deviceDetail"
  },
  "flaggedForReview": "Boolean",
  "id": "893f10cf-10cf-893f-cf10-3f89cf103f89",
  "homeTenantId": "String",
  "isInteractive": "Boolean",
  "isTenantRestricted": "Boolean",
  "ipAddress": "String",
  "ipAddressFromResourceProvider": "String",
  "location": {
    "@odata.type": "microsoft.graph.signInLocation"
  },
  "mfaDetail": {
    "@odata.type": "microsoft.graph.mfaDetail"
  },
  "networkLocationDetails": [
    {
      "@odata.type": "microsoft.graph.networkLocationDetail"
    }
  ],
  "originalRequestId": "String",
  "privateLinkDetails": {
    "@odata.type": "microsoft.graph.privateLinkDetails"
  },
  "processingTimeInMilliseconds": "Integer",
  "riskDetail": "String",
  "riskEventTypes": [
    "String"
  ],
  "riskEventTypes_v2": [
    "String"
  ],
  "riskLevelAggregated": "String",
  "riskLevelDuringSignIn": "String",
  "riskState": "String",
  "resourceDisplayName": "String",
  "resourceId": "String",
  "resourceTenantId": "String",
  "servicePrincipalCredentialKeyId": "String",
  "servicePrincipalCredentialThumbprint": "String",
  "servicePrincipalId": "String",
  "servicePrincipalName": "String",
  "sessionLifetimePolicies": [
    {
      "@odata.type": "microsoft.graph.sessionLifetimePolicy"
    }
  ],
  "signInEventTypes": [
    "String"
  ],
  "signInIdentifier": "String",
  "signInIdentifierType": "String",
  "status": {
    "@odata.type": "microsoft.graph.signInStatus"
  },
  "tokenIssuerName": "String",
  "tokenIssuerType": "String",
  "userAgent": "String",
  "userDisplayName": "String",
  "userId": "String",
  "userPrincipalName": "String",
  "userType": "String",
  "targetTenantId": "Guid"
}
```

