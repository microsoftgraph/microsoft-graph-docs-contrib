---
title: "restrictedSignIn resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# restrictedSignIn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [signIn](../resources/signin.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List restrictedSignIns](../api/restrictedsignin-list.md)|[restrictedSignIn](../resources/restrictedsignin.md) collection|Get a list of the [restrictedSignIn](../resources/restrictedsignin.md) objects and their properties.|
|[Create restrictedSignIn](../api/restrictedsignin-create.md)|[restrictedSignIn](../resources/restrictedsignin.md)|Create a new [restrictedSignIn](../resources/restrictedsignin.md) object.|
|[Get restrictedSignIn](../api/restrictedsignin-get.md)|[restrictedSignIn](../resources/restrictedsignin.md)|Read the properties and relationships of a [restrictedSignIn](../resources/restrictedsignin.md) object.|
|[Update restrictedSignIn](../api/restrictedsignin-update.md)|[restrictedSignIn](../resources/restrictedsignin.md)|Update the properties of a [restrictedSignIn](../resources/restrictedsignin.md) object.|
|[Delete restrictedSignIn](../api/restrictedsignin-delete.md)|None|Deletes a [restrictedSignIn](../resources/restrictedsignin.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alternateSignInName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|appDisplayName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|appId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|appliedConditionalAccessPolicies|[appliedConditionalAccessPolicy](../resources/appliedconditionalaccesspolicy.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|authenticationDetails|[authenticationDetail](../resources/authenticationdetail.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|authenticationMethodsUsed|String collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|authenticationProcessingDetails|[keyValue](../resources/keyvalue.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|authenticationRequirement|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|authenticationRequirementPolicies|[authenticationRequirementPolicy](../resources/authenticationrequirementpolicy.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|autonomousSystemNumber|Int32|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|clientAppUsed|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|conditionalAccessStatus|conditionalAccessStatus|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `success`, `failure`, `notApplied`, `unknownFutureValue`.|
|correlationId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|crossTenantAccessType|signInAccessType|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `none`, `b2bCollaboration`, `b2bDirectConnect`, `microsoftSupport`, `serviceProvider`, `unknownFutureValue`.|
|deviceDetail|[deviceDetail](../resources/devicedetail.md)|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|flaggedForReview|Boolean|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|homeTenantId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|id|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|ipAddress|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|ipAddressFromResourceProvider|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|isInteractive|Boolean|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|isTenantRestricted|Boolean|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|location|[signInLocation](../resources/signinlocation.md)|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|mfaDetail|[mfaDetail](../resources/mfadetail.md)|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|networkLocationDetails|[networkLocationDetail](../resources/networklocationdetail.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|originalRequestId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|privateLinkDetails|[privateLinkDetails](../resources/privatelinkdetails.md)|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|processingTimeInMilliseconds|Int32|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|resourceDisplayName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|resourceId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|resourceTenantId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|riskDetail|riskDetail|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, `unknownFutureValue`.|
|riskEventTypes|riskEventType collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|riskEventTypes_v2|String collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|riskLevelAggregated|riskLevel|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskLevelDuringSignIn|riskLevel|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskState|riskState|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.|
|servicePrincipalCredentialKeyId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|servicePrincipalCredentialThumbprint|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|servicePrincipalId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|servicePrincipalName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|sessionLifetimePolicies|[sessionLifetimePolicy](../resources/sessionlifetimepolicy.md) collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|signInEventTypes|String collection|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|signInIdentifier|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|signInIdentifierType|signInIdentifierType|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `userPrincipalName`, `phoneNumber`, `proxyAddress`, `qrCode`, `onPremisesUserPrincipalName`, `unknownFutureValue`.|
|status|[signInStatus](../resources/signinstatus.md)|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|targetTenantId|Guid|**TODO: Add Description**|
|tokenIssuerName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|tokenIssuerType|tokenIssuerType|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `AzureAD`, `ADFederationServices`, `UnknownFutureValue`.|
|userAgent|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|userDisplayName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|userId|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|userPrincipalName|String|**TODO: Add Description** Inherited from [signIn](../resources/signin.md).|
|userType|signInUserType|**TODO: Add Description** Inherited from [signIn](../resources/signin.md). Possible values are: `member`, `guest`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.restrictedSignIn",
  "baseType": "Microsoft.AAD.Reporting.signIn",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.restrictedSignIn",
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
  "id": "String (identifier)",
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

