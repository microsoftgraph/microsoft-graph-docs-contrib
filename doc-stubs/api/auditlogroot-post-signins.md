---
title: "Create signIn"
description: "Create a new signIn object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create signIn
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new signIn object.

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
POST /auditLogs/signIns
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [signIn](../resources/signin.md) object.

The following table shows the properties that are required when you create the [signIn](../resources/signin.md).

|Property|Type|Description|
|:---|:---|:---|
|alternateSignInName|String|**TODO: Add Description**|
|appDisplayName|String|**TODO: Add Description**|
|appId|String|**TODO: Add Description**|
|appliedConditionalAccessPolicies|[Microsoft.AAD.Reporting.appliedConditionalAccessPolicy](../resources/appliedconditionalaccesspolicy.md) collection|**TODO: Add Description**|
|authenticationDetails|[Microsoft.AAD.Reporting.authenticationDetail](../resources/authenticationdetail.md) collection|**TODO: Add Description**|
|authenticationMethodsUsed|String collection|**TODO: Add Description**|
|authenticationProcessingDetails|[Microsoft.AAD.Reporting.keyValue](../resources/keyvalue.md) collection|**TODO: Add Description**|
|authenticationRequirement|String|**TODO: Add Description**|
|authenticationRequirementPolicies|[Microsoft.AAD.Reporting.authenticationRequirementPolicy](../resources/authenticationrequirementpolicy.md) collection|**TODO: Add Description**|
|autonomousSystemNumber|Int32|**TODO: Add Description**|
|clientAppUsed|String|**TODO: Add Description**|
|conditionalAccessStatus|conditionalAccessStatus|**TODO: Add Description**. Possible values are: `success`, `failure`, `notApplied`, `unknownFutureValue`.|
|correlationId|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|crossTenantAccessType|signInAccessType|**TODO: Add Description**. Possible values are: `none`, `b2bCollaboration`, `b2bDirectConnect`, `microsoftSupport`, `serviceProvider`, `unknownFutureValue`.|
|deviceDetail|[Microsoft.AAD.Reporting.deviceDetail](../resources/devicedetail.md)|**TODO: Add Description**|
|flaggedForReview|Boolean|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|homeTenantId|String|**TODO: Add Description**|
|isInteractive|Boolean|**TODO: Add Description**|
|isTenantRestricted|Boolean|**TODO: Add Description**|
|ipAddress|String|**TODO: Add Description**|
|ipAddressFromResourceProvider|String|**TODO: Add Description**|
|location|[Microsoft.AAD.Reporting.signInLocation](../resources/signinlocation.md)|**TODO: Add Description**|
|mfaDetail|[Microsoft.AAD.Reporting.mfaDetail](../resources/mfadetail.md)|**TODO: Add Description**|
|networkLocationDetails|[Microsoft.AAD.Reporting.networkLocationDetail](../resources/networklocationdetail.md) collection|**TODO: Add Description**|
|originalRequestId|String|**TODO: Add Description**|
|privateLinkDetails|[Microsoft.AAD.Reporting.privateLinkDetails](../resources/privatelinkdetails.md)|**TODO: Add Description**|
|processingTimeInMilliseconds|Int32|**TODO: Add Description**|
|riskDetail|riskDetail|**TODO: Add Description**. Possible values are: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, `unknownFutureValue`.|
|riskEventTypes|riskEventType collection|**TODO: Add Description**. Possible values are: `unlikelyTravel`, `anonymizedIPAddress`, `maliciousIPAddress`, `unfamiliarFeatures`, `malwareInfectedIPAddress`, `suspiciousIPAddress`, `leakedCredentials`, `investigationsThreatIntelligence`, `generic`, `adminConfirmedUserCompromised`, `mcasImpossibleTravel`, `mcasSuspiciousInboxManipulationRules`, `investigationsThreatIntelligenceSigninLinked`, `maliciousIPAddressValidCredentialsBlockedIP`, `unknownFutureValue`.|
|riskEventTypes_v2|String collection|**TODO: Add Description**|
|riskLevelAggregated|riskLevel|**TODO: Add Description**. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskLevelDuringSignIn|riskLevel|**TODO: Add Description**. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskState|riskState|**TODO: Add Description**. Possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.|
|resourceDisplayName|String|**TODO: Add Description**|
|resourceId|String|**TODO: Add Description**|
|resourceTenantId|String|**TODO: Add Description**|
|servicePrincipalCredentialKeyId|String|**TODO: Add Description**|
|servicePrincipalCredentialThumbprint|String|**TODO: Add Description**|
|servicePrincipalId|String|**TODO: Add Description**|
|servicePrincipalName|String|**TODO: Add Description**|
|sessionLifetimePolicies|[Microsoft.AAD.Reporting.sessionLifetimePolicy](../resources/sessionlifetimepolicy.md) collection|**TODO: Add Description**|
|signInEventTypes|String collection|**TODO: Add Description**|
|signInIdentifier|String|**TODO: Add Description**|
|signInIdentifierType|signInIdentifierType|**TODO: Add Description**. Possible values are: `userPrincipalName`, `phoneNumber`, `proxyAddress`, `qrCode`, `onPremisesUserPrincipalName`, `unknownFutureValue`.|
|status|[Microsoft.AAD.Reporting.signInStatus](../resources/signinstatus.md)|**TODO: Add Description**|
|tokenIssuerName|String|**TODO: Add Description**|
|tokenIssuerType|tokenIssuerType|**TODO: Add Description**. Possible values are: `AzureAD`, `ADFederationServices`, `UnknownFutureValue`.|
|userAgent|String|**TODO: Add Description**|
|userDisplayName|String|**TODO: Add Description**|
|userId|String|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|
|userType|signInUserType|**TODO: Add Description**. Possible values are: `member`, `guest`, `unknownFutureValue`.|



## Response

If successful, this method returns a `201 Created` response code and a [signIn](../resources/signin.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_signin_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/auditLogs/signIns
Content-Type: application/json
Content-length: 2606

{
  "@odata.type": "#Microsoft.AAD.Reporting.signIn",
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
  "userType": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.AAD.Reporting.signIn"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.AAD.Reporting.signIn",
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
  "id": "5dd33b11-3b11-5dd3-113b-d35d113bd35d",
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
  "userType": "String"
}
```

