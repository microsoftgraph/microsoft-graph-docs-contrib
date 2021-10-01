---
title: "Update signIn"
description: "Update the properties of a signIn object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update signIn
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [signIn](../resources/signin.md) object.

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
PATCH /auditLogs/signIns/{signInId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [signIn](../resources/signin.md) object.

The following table shows the properties that are required when you update the [signIn](../resources/signin.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|appDisplayName|String|**TODO: Add Description**|
|appId|String|**TODO: Add Description**|
|appliedConditionalAccessPolicies|[appliedConditionalAccessPolicy](../resources/appliedconditionalaccesspolicy.md) collection|**TODO: Add Description**|
|authenticationDetails|[authenticationDetail](../resources/authenticationdetail.md) collection|**TODO: Add Description**|
|authenticationMethodsUsed|String collection|**TODO: Add Description**|
|authenticationProcessingDetails|[keyValue](../resources/keyvalue.md) collection|**TODO: Add Description**|
|authenticationProtocol|protocolType|**TODO: Add Description**. The possible values are: `none`, `oAuth2`, `ropc`, `wsFederation`, `saml20`, `deviceCode`, `unknownFutureValue`.|
|authenticationRequirement|String|**TODO: Add Description**|
|authenticationRequirementPolicies|[authenticationRequirementPolicy](../resources/authenticationrequirementpolicy.md) collection|**TODO: Add Description**|
|autonomousSystemNumber|Int32|**TODO: Add Description**|
|clientAppUsed|String|**TODO: Add Description**|
|conditionalAccessStatus|conditionalAccessStatus|**TODO: Add Description**. The possible values are: `success`, `failure`, `notApplied`, `unknownFutureValue`.|
|correlationId|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|crossTenantAccessType|signInAccessType|**TODO: Add Description**. The possible values are: `none`, `b2bCollaboration`, `b2bDirectConnect`, `microsoftSupport`, `serviceProvider`, `unknownFutureValue`.|
|deviceDetail|[deviceDetail](../resources/devicedetail.md)|**TODO: Add Description**|
|flaggedForReview|Boolean|**TODO: Add Description**|
|homeTenantId|String|**TODO: Add Description**|
|homeTenantName|String|**TODO: Add Description**|
|incomingTokenType|incomingTokenType|**TODO: Add Description**. The possible values are: `none`, `primaryRefreshToken`, `saml11`, `saml20`, `unknownFutureValue`.|
|ipAddress|String|**TODO: Add Description**|
|ipAddressFromResourceProvider|String|**TODO: Add Description**|
|isInteractive|Boolean|**TODO: Add Description**|
|isTenantRestricted|Boolean|**TODO: Add Description**|
|location|[signInLocation](../resources/signinlocation.md)|**TODO: Add Description**|
|mfaDetail|[mfaDetail](../resources/mfadetail.md)|**TODO: Add Description**|
|networkLocationDetails|[networkLocationDetail](../resources/networklocationdetail.md) collection|**TODO: Add Description**|
|originalRequestId|String|**TODO: Add Description**|
|privateLinkDetails|[privateLinkDetails](../resources/privatelinkdetails.md)|**TODO: Add Description**|
|processingTimeInMilliseconds|Int32|**TODO: Add Description**|
|resourceDisplayName|String|**TODO: Add Description**|
|resourceId|String|**TODO: Add Description**|
|resourceTenantId|String|**TODO: Add Description**|
|riskDetail|riskDetail|**TODO: Add Description**. The possible values are: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, `unknownFutureValue`.|
|riskEventTypes_v2|String collection|**TODO: Add Description**|
|riskLevelAggregated|riskLevel|**TODO: Add Description**. The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskLevelDuringSignIn|riskLevel|**TODO: Add Description**. The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskState|riskState|**TODO: Add Description**. The possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.|
|servicePrincipalCredentialKeyId|String|**TODO: Add Description**|
|servicePrincipalCredentialThumbprint|String|**TODO: Add Description**|
|servicePrincipalId|String|**TODO: Add Description**|
|servicePrincipalName|String|**TODO: Add Description**|
|sessionLifetimePolicies|[sessionLifetimePolicy](../resources/sessionlifetimepolicy.md) collection|**TODO: Add Description**|
|signInEventTypes|String collection|**TODO: Add Description**|
|signInIdentifier|String|**TODO: Add Description**|
|signInIdentifierType|signInIdentifierType|**TODO: Add Description**. The possible values are: `userPrincipalName`, `phoneNumber`, `proxyAddress`, `qrCode`, `onPremisesUserPrincipalName`, `unknownFutureValue`.|
|status|[signInStatus](../resources/signinstatus.md)|**TODO: Add Description**|
|tokenIssuerName|String|**TODO: Add Description**|
|tokenIssuerType|tokenIssuerType|**TODO: Add Description**. The possible values are: `AzureAD`, `ADFederationServices`, `UnknownFutureValue`, `AzureADBackupAuth`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `AzureADBackupAuth`.|
|uniqueTokenIdentifier|String|**TODO: Add Description**|
|userAgent|String|**TODO: Add Description**|
|userDisplayName|String|**TODO: Add Description**|
|userId|String|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|
|userType|signInUserType|**TODO: Add Description**. The possible values are: `member`, `guest`, `unknownFutureValue`.|



## Response

If successful, this method returns a `200 OK` response code and an updated [signIn](../resources/signin.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_signin"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/auditLogs/signIns/{signInId}
Content-Type: application/json
Content-length: 2661

{
  "@odata.type": "#microsoft.graph.signIn",
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
  "authenticationProtocol": "String",
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
  "homeTenantName": "String",
  "incomingTokenType": "String",
  "ipAddress": "String",
  "ipAddressFromResourceProvider": "String",
  "isInteractive": "Boolean",
  "isTenantRestricted": "Boolean",
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
  "resourceDisplayName": "String",
  "resourceId": "String",
  "resourceTenantId": "String",
  "riskDetail": "String",
  "riskEventTypes_v2": [
    "String"
  ],
  "riskLevelAggregated": "String",
  "riskLevelDuringSignIn": "String",
  "riskState": "String",
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
  "uniqueTokenIdentifier": "String",
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.signIn",
  "id": "d881caa3-caa3-d881-a3ca-81d8a3ca81d8",
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
  "authenticationProtocol": "String",
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
  "homeTenantId": "String",
  "homeTenantName": "String",
  "incomingTokenType": "String",
  "ipAddress": "String",
  "ipAddressFromResourceProvider": "String",
  "isInteractive": "Boolean",
  "isTenantRestricted": "Boolean",
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
  "resourceDisplayName": "String",
  "resourceId": "String",
  "resourceTenantId": "String",
  "riskDetail": "String",
  "riskEventTypes_v2": [
    "String"
  ],
  "riskLevelAggregated": "String",
  "riskLevelDuringSignIn": "String",
  "riskState": "String",
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
  "uniqueTokenIdentifier": "String",
  "userAgent": "String",
  "userDisplayName": "String",
  "userId": "String",
  "userPrincipalName": "String",
  "userType": "String"
}
```

