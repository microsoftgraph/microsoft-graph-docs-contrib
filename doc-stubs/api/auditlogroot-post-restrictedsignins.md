---
title: "Create restrictedSignIn"
description: "Create a new restrictedSignIn object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
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

You can specify the following properties when creating a **restrictedSignIn**.

|Property|Type|Description|
|:---|:---|:---|
|appDisplayName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|appId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|appliedConditionalAccessPolicies|[Microsoft.AAD.Reporting.appliedConditionalAccessPolicy](../resources/appliedconditionalaccesspolicy.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|autonomousSystemNumber|Int32|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|authenticationDetails|[Microsoft.AAD.Reporting.authenticationDetail](../resources/authenticationdetail.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|authenticationMethodsUsed|String collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|authenticationProcessingDetails|[Microsoft.AAD.Reporting.keyValue](../resources/keyvalue.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|authenticationProtocol|protocolType|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). The possible values are: `none`, `oAuth2`, `ropc`, `wsFederation`, `saml20`, `deviceCode`, `unknownFutureValue`. Optional.|
|authenticationRequirement|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|authenticationRequirementPolicies|[Microsoft.AAD.Reporting.authenticationRequirementPolicy](../resources/authenticationrequirementpolicy.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|clientAppUsed|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|conditionalAccessStatus|conditionalAccessStatus|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). The possible values are: `success`, `failure`, `notApplied`, `unknownFutureValue`. Optional.|
|correlationId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Required.|
|crossTenantAccessType|signInAccessType|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). The possible values are: `none`, `b2bCollaboration`, `b2bDirectConnect`, `microsoftSupport`, `serviceProvider`, `unknownFutureValue`. Optional.|
|deviceDetail|[Microsoft.AAD.Reporting.deviceDetail](../resources/devicedetail.md)|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|flaggedForReview|Boolean|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|homeTenantId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|homeTenantName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|isInteractive|Boolean|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|isTenantRestricted|Boolean|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|ipAddress|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|ipAddressFromResourceProvider|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|location|[Microsoft.AAD.Reporting.signInLocation](../resources/signinlocation.md)|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|mfaDetail|[Microsoft.AAD.Reporting.mfaDetail](../resources/mfadetail.md)|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|networkLocationDetails|[Microsoft.AAD.Reporting.networkLocationDetail](../resources/networklocationdetail.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|originalRequestId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|privateLinkDetails|[Microsoft.AAD.Reporting.privateLinkDetails](../resources/privatelinkdetails.md)|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|processingTimeInMilliseconds|Int32|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|riskDetail|riskDetail|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). The possible values are: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, `unknownFutureValue`. Optional.|
|riskEventTypes_v2|String collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|riskLevelAggregated|riskLevel|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. Optional.|
|riskLevelDuringSignIn|riskLevel|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. Optional.|
|riskState|riskState|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). The possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`. Optional.|
|resourceDisplayName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|resourceId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|resourceTenantId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|servicePrincipalCredentialKeyId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|servicePrincipalCredentialThumbprint|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|servicePrincipalId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Required.|
|servicePrincipalName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|sessionLifetimePolicies|[Microsoft.AAD.Reporting.sessionLifetimePolicy](../resources/sessionlifetimepolicy.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|signInEventTypes|String collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|signInIdentifier|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|signInIdentifierType|signInIdentifierType|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). The possible values are: `userPrincipalName`, `phoneNumber`, `proxyAddress`, `qrCode`, `onPremisesUserPrincipalName`, `unknownFutureValue`. Optional.|
|status|[Microsoft.AAD.Reporting.signInStatus](../resources/signinstatus.md)|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|tokenIssuerName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|tokenIssuerType|tokenIssuerType|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). The possible values are: `AzureAD`, `ADFederationServices`, `UnknownFutureValue`, `AzureADBackupAuth`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `AzureADBackupAuth`. Optional.|
|incomingTokenType|incomingTokenType|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). The possible values are: `none`, `primaryRefreshToken`, `saml11`, `saml20`, `unknownFutureValue`. Optional.|
|uniqueTokenIdentifier|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|userAgent|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|userDisplayName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|userId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Required.|
|userPrincipalName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Optional.|
|userType|signInUserType|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). The possible values are: `member`, `guest`, `unknownFutureValue`. Optional.|
|targetTenantId|Guid|**TODO: Add Description** Optional.|



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
Content-length: 2708

{
  "@odata.type": "#Microsoft.AAD.Reporting.restrictedSignIn",
  "appDisplayName": "String",
  "appId": "String",
  "appliedConditionalAccessPolicies": [
    {
      "@odata.type": "microsoft.graph.appliedConditionalAccessPolicy"
    }
  ],
  "autonomousSystemNumber": "Integer",
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
  "authenticationProtocol": "String",
  "authenticationRequirement": "String",
  "authenticationRequirementPolicies": [
    {
      "@odata.type": "microsoft.graph.authenticationRequirementPolicy"
    }
  ],
  "clientAppUsed": "String",
  "conditionalAccessStatus": "String",
  "correlationId": "String",
  "crossTenantAccessType": "String",
  "deviceDetail": {
    "@odata.type": "microsoft.graph.deviceDetail"
  },
  "flaggedForReview": "Boolean",
  "homeTenantId": "String",
  "homeTenantName": "String",
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
  "incomingTokenType": "String",
  "uniqueTokenIdentifier": "String",
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
  "appDisplayName": "String",
  "appId": "String",
  "appliedConditionalAccessPolicies": [
    {
      "@odata.type": "microsoft.graph.appliedConditionalAccessPolicy"
    }
  ],
  "autonomousSystemNumber": "Integer",
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
  "authenticationProtocol": "String",
  "authenticationRequirement": "String",
  "authenticationRequirementPolicies": [
    {
      "@odata.type": "microsoft.graph.authenticationRequirementPolicy"
    }
  ],
  "clientAppUsed": "String",
  "conditionalAccessStatus": "String",
  "correlationId": "String",
  "createdDateTime": "String (timestamp)",
  "crossTenantAccessType": "String",
  "deviceDetail": {
    "@odata.type": "microsoft.graph.deviceDetail"
  },
  "flaggedForReview": "Boolean",
  "id": "867c6f25-6f25-867c-256f-7c86256f7c86",
  "homeTenantId": "String",
  "homeTenantName": "String",
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
  "incomingTokenType": "String",
  "uniqueTokenIdentifier": "String",
  "userAgent": "String",
  "userDisplayName": "String",
  "userId": "String",
  "userPrincipalName": "String",
  "userType": "String",
  "targetTenantId": "Guid"
}
```

