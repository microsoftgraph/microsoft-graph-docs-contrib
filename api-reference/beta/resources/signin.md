---
title: "signIn resource type"
doc_type: resourcePageType
description: "Provides details about user or application sign-in activity in your directory."
author: "besiler"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
---


# signIn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides details about user or application sign-in activity in your directory. You must have an Azure AD Premium P1 or P2 license to download sign-in logs using the Microsoft Graph API.

The availability of sign-in logs is governed by the [Azure AD data retention policies](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data).

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List signIn](../api/signin-list.md) | [signIn](signin.md) |Read properties and relationships of signIn objects.|
|[Get signIn](../api/signin-get.md) | [signIn](signin.md) |Read properties and relationships of a signIn object.|
|[Confirm compromised](../api/signin-confirmcompromised.md)|None|Mark an event in the Azure AD sign in logs as risky.|
|[Confirm safe](../api/signin-confirmsafe.md)|None|mark an event in Azure AD sign in logs as safe.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|appDisplayName|String|The application name displayed in the Azure Portal. Supports `$filter` (`eq` and `startsWith` operators only).|
|appId|String|The application identifier in Azure Active Directory. Supports `$filter` (`eq` operator only).|
|appliedConditionalAccessPolicies|[appliedConditionalAccessPolicy](appliedconditionalaccesspolicy.md) collection|A list of conditional access policies that are triggered by the corresponding sign-in activity.|
|appliedEventListeners|[appliedAuthenticationEventListener](../resources/appliedauthenticationeventlistener.md) collection|Detailed information about the listeners, such as Azure Logic Apps and Azure Functions, that were triggered by the corresponding events in the sign-in event.|
|authenticationAppDeviceDetails|[authenticationAppDeviceDetails](../resources/authenticationappdevicedetails.md)|Provides details about the app and device used during an Azure AD authentication step.|
|authenticationAppPolicyEvaluationDetails|[authenticationAppPolicyDetails](../resources/authenticationapppolicydetails.md) collection|Provides details of the Azure AD policies applied to a user and client authentication app during an authentication step.|
|authenticationContextClassReferences|[authenticationContext](authenticationcontext.md) collection|Contains a collection of values that represent the conditional access authentication contexts applied to the sign-in.|
|authenticationDetails|[authenticationDetail](authenticationdetail.md) collection|The result of the authentication attempt and additional details on the authentication method.|
|authenticationMethodsUsed|String collection|The authentication methods used. Possible values: `SMS`, `Authenticator App`, `App Verification code`, `Password`, `FIDO`, `PTA`, or `PHS`.|
|authenticationProcessingDetails|[keyValue](keyvalue.md) collection|Additional authentication processing details, such as the agent name in case of PTA/PHS or Server/farm name in case of federated authentication.|
|authenticationProtocol|protocolType|Lists the protocol type or grant type used in the authentication. The possible values are: `none`, `oAuth2`, `ropc`, `wsFederation`, `saml20`, `deviceCode`, `unknownFutureValue`. For authentications that use protocols other than the possible values listed, the protocol type is listed as `none`. |
|authenticationRequirement | String | This holds the highest level of authentication needed through all the sign-in steps, for sign-in to succeed. Supports `$filter` (`eq` and `startsWith` operators only).|
|authenticationRequirementPolicies|[authenticationRequirementPolicy](../resources/authenticationrequirementpolicy.md) collection|Sources of authentication requirement, such as conditional access, per-user MFA, identity protection, and security defaults.|
|autonomousSystemNumber|Int32|The Autonomous System Number (ASN) of the network used by the actor.|
|azureResourceId|String|Contains a fully qualified Azure Resource Manager ID of an Azure resource accessed during the sign-in.|
|clientAppUsed|String|The legacy client used for sign-in activity. For example: `Browser`, `Exchange ActiveSync`, `Modern clients`, `IMAP`, `MAPI`, `SMTP`, or `POP`. Supports `$filter` (`eq` operator only). |
|clientCredentialType|clientCredentialType|Describes the credential type that a user client or service principal provided to Azure AD to authenticate itself. You may wish to review clientCredentialType to track and eliminate less secure credential types or to watch for clients and service principals using anomalous credential types. The possible values are: `none`, `clientSecret`, `clientAssertion`, `federatedIdentityCredential`, `managedIdentity`, `certificate`, `unknownFutureValue`.|
|conditionalAccessStatus|conditionalAccessStatus| The status of the conditional access policy triggered. Possible values: `success`, `failure`, `notApplied`, or `unknownFutureValue`. Supports `$filter` (`eq` operator only).|
|correlationId|String|The identifier that's sent from the client when sign-in is initiated. This is used for troubleshooting the corresponding sign-in activity when calling for support. Supports `$filter` (`eq` operator only).|
|createdDateTime|DateTimeOffset|The date and time the sign-in was initiated. The Timestamp type is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$orderby` and `$filter` (`eq`, `le`, and `ge` operators only).|
|crossTenantAccessType|signInAccessType|Describes the type of cross-tenant access used by the actor to access the resource. Possible values are: `none`, `b2bCollaboration`, `b2bDirectConnect`, `microsoftSupport`, `serviceProvider`, `unknownFutureValue`. If the sign in did not cross tenant boundaries, the value is `none`.|
|deviceDetail|[deviceDetail](devicedetail.md)|The device information from where the sign-in occurred. Includes information such as deviceId, OS, and browser. Supports `$filter` (`eq` and `startsWith` operators only) on **browser** and **operatingSystem** properties.|
|federatedCredentialId|String|Contains the identifier of an application's federated identity credential, if a federated identity credential was used to sign in.|
|flaggedForReview|Boolean|During a failed sign in, a user may click a button in the Azure portal to mark the failed event for tenant admins. If a user clicked the button to flag the failed sign in, this value is `true`.|
|homeTenantId|String|The tenant identifier of the user initiating the sign in. Not applicable in Managed Identity or service principal sign ins.|
|homeTenantName|String|For user sign ins, the identifier of the tenant that the user is a member of. Only populated in cases where the home tenant has provided affirmative consent to Azure AD to show the tenant content.|
|id|String|The identifier representing the sign-in activity. Inherited from [entity](entity.md). Supports `$filter` (`eq` operator only).|
|incomingTokenType|incomingTokenType|Indicates the token types that were presented to Azure AD to authenticate the actor in the sign in. The possible values are: `none`, `primaryRefreshToken`, `saml11`, `saml20`, `unknownFutureValue`, `remoteDesktopToken`. <br><br> **NOTE** Azure AD may have also used token types not listed in this Enum type to authenticate the actor. Do not infer the lack of a token if it is not one of the types listed. Also, please note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `remoteDesktopToken`.|
|ipAddress|String|The IP address of the client from where the sign-in occurred. Supports `$filter` (`eq` and `startsWith` operators only).|
|ipAddressFromResourceProvider|String|The IP address a user used to reach a resource provider, used to determine Conditional Access compliance for some policies. For example, when a user interacts with Exchange Online, the IP address Exchange receives from the user may be recorded here. This value is often `null`.|
|isInteractive|Boolean|Indicates whether a user sign in is interactive. In interactive sign in, the user provides an authentication factor to Azure AD. These factors include passwords, responses to MFA challenges, biometric factors, or QR codes that a user provides to Azure AD or an associated app. In non-interactive sign in, the user doesn't provide an authentication factor. Instead, the client app uses a token or code to authenticate or access a resource on behalf of a user. Non-interactive sign ins are commonly used for a client to sign in on a user's behalf in a process transparent to the user.|
|isTenantRestricted|Boolean|Shows whether the sign in event was subject to an Azure AD tenant restriction policy.|
|location|[signInLocation](signinlocation.md)|The city, state, and 2 letter country code from where the sign-in occurred. Supports `$filter` (`eq` and `startsWith` operators only) on **city**, **state**, and **countryOrRegion** properties.|
|managedServiceIdentity|[managedIdentity](../resources/managedidentity.md)|Contains information about the managed identity used for the sign in, including its type and associated Azure Resource Manager (ARM) resource ID.|
|networkLocationDetails|[networkLocationDetail](networklocationdetail.md) collection|The network location details including the type of network used and its names.|
|originalRequestId|String|The request identifier of the first request in the authentication sequence. Supports `$filter` (`eq` operator only).|
|privateLinkDetails|[privateLinkDetails](../resources/privatelinkdetails.md)|Contains information about the Azure AD Private Link policy that is associated with the sign in event.|
|processingTimeInMilliseconds|Int|The request processing time in milliseconds in AD STS.|
|resourceDisplayName|String|The name of the resource that the user signed in to. Supports `$filter` (`eq` operator only).|
|resourceId|String|The identifier of the resource that the user signed in to. Supports `$filter` (`eq` operator only).|
|resourceServicePrincipalId|String|The identifier of the service principal representing the target resource in the sign-in event.|
|resourceTenantId|String|The tenant identifier of the resource referenced in the sign in.|
|riskDetail|riskDetail|The reason behind a specific state of a risky user, sign-in, or a risk event. Possible values: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, or `unknownFutureValue`. The value `none` means that no action has been performed on the user or sign-in so far. Supports `$filter` (`eq` operator only).<br> **Note:** Details for this property are only available for Azure AD Premium P2 customers. All other customers are returned `hidden`.|
|riskEventTypes_v2|String collection|The list of risk event types associated with the sign-in. Possible values: `unlikelyTravel`, `anonymizedIPAddress`, `maliciousIPAddress`, `unfamiliarFeatures`, `malwareInfectedIPAddress`, `suspiciousIPAddress`, `leakedCredentials`, `investigationsThreatIntelligence`,  `generic`, or `unknownFutureValue`. Supports `$filter` (`eq` and `startsWith` operators only).|
|riskLevelAggregated|riskLevel|The aggregated risk level. Possible values: `none`, `low`, `medium`, `high`, `hidden`, or `unknownFutureValue`. The value `hidden` means the user or sign-in was not enabled for Azure AD Identity Protection. Supports `$filter` (`eq` operator only). <br>**Note:** Details for this property are only available for Azure AD Premium P2 customers. All other customers are returned `hidden`.|
|riskLevelDuringSignIn|riskLevel|The risk level during sign-in. Possible values: `none`, `low`, `medium`, `high`, `hidden`, or `unknownFutureValue`. The value `hidden` means the user or sign-in was not enabled for Azure AD Identity Protection. Supports `$filter` (`eq` operator only). <br>**Note:** Details for this property are only available for Azure AD Premium P2 customers. All other customers are returned `hidden`.|
|riskState|riskState|The risk state of a risky user, sign-in, or a risk event. Possible values: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, or `unknownFutureValue`. Supports `$filter` (`eq` operator only).|
|servicePrincipalCredentialKeyId|String|The unique identifier of the key credential used by the service principal to authenticate.|
|servicePrincipalCredentialThumbprint|String|The certificate thumbprint of the certificate used by the service principal to authenticate.|
|servicePrincipalId|String|The application identifier used for sign-in. This field is populated when you are signing in using an application. Supports `$filter` (`eq` and `startsWith` operators only).|
|servicePrincipalName|String|The application name used for sign-in. This field is populated when you are signing in using an application. Supports `$filter` (`eq` and `startsWith` operators only).|
|sessionLifetimePolicies|[sessionLifetimePolicy](sessionlifetimepolicy.md) collection|Any conditional access session management policies that were applied during the sign-in event.|
|signInEventTypes|String collection|Indicates the category of sign in that the event represents. For user sign ins, the category can be `interactiveUser` or `nonInteractiveUser` and corresponds to the value for the **isInteractive** property on the signin resource. For managed identity sign ins, the category is `managedIdentity`. For service principal sign ins, the category is **servicePrincipal**. Possible values are: `interactiveUser`, `nonInteractiveUser`, `servicePrincipal`, `managedIdentity`, `unknownFutureValue`. Supports `$filter` (`eq`, `ne`).|
|signInIdentifier|String|The identification that the user provided to sign in. It may be the userPrincipalName but it's also populated when a user signs in using other identifiers.|
|signInIdentifierType|signInIdentifierType|The type of sign in identifier. Possible values are: `userPrincipalName`, `phoneNumber`, `proxyAddress`, `qrCode`, `onPremisesUserPrincipalName`, `unknownFutureValue`.|
|status|[signInStatus](signinstatus.md)|The sign-in status. Includes the error code and description of the error (in case of a sign-in failure). Supports `$filter` (`eq` operator only) on **errorCode** property.|
|tokenIssuerName|String|The name of the identity provider. For example, `sts.microsoft.com`. Supports `$filter` (`eq` operator only).|
|tokenIssuerType|tokenIssuerType|The type of identity provider. The possible values are: `AzureAD`, `ADFederationServices`, `UnknownFutureValue`, `AzureADBackupAuth`, `ADFederationServicesMFAAdapter`, `NPSExtension`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `AzureADBackupAuth` , `ADFederationServicesMFAAdapter` , `NPSExtension`.|
|uniqueTokenIdentifier|String|A unique base64 encoded request identifier used to track tokens issued by Azure AD as they are redeemed at resource providers. |
|userAgent|String|The user agent information related to sign-in. Supports `$filter` (`eq` and `startsWith` operators only).|
|userDisplayName|String|The display name of the user. Supports `$filter` (`eq` and `startsWith` operators only).|
|userId|String|The identifier of the user. Supports `$filter` (`eq` operator only).|
|userPrincipalName|String|The UPN of the user. Supports `$filter` (`eq` and `startsWith` operators only).|
|userType|signInUserType|Identifies whether the user is a member or guest in the tenant. Possible values are: `member`, `guest`, `unknownFutureValue`.|
|mfaDetail (deprecated)|String|This property is deprecated.|


## Relationships
None


## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.signIn",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.signIn",
  "appDisplayName": "String",
  "appId": "String",
  "authenticationContextClassReferences": [{"@odata.type": "microsoft.graph.authenticationContext"}],
  "appliedConditionalAccessPolicies": [
    {
      "@odata.type": "microsoft.graph.appliedConditionalAccessPolicy"
    }
  ],
  "appliedEventListeners": [
    {
      "@odata.type": "microsoft.graph.appliedAuthenticationEventListener"
    }
  ],
  "authenticationAppDeviceDetails": {
      "@odata.type": "microsoft.graph.authenticationAppDeviceDetails"
  },
  "authenticationAppPolicyEvaluationDetails": [
    {
      "@odata.type": "microsoft.graph.authenticationAppPolicyDetails"
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
  "azureResourceId": "String",
  "clientAppUsed": "String",
  "conditionalAccessStatus": "String",
  "correlationId": "String",
  "createdDateTime": "String (timestamp)",
  "crossTenantAccessType": "String",
  "deviceDetail": {
    "@odata.type": "microsoft.graph.deviceDetail"
  },
  "federatedCredentialId": "String",
  "flaggedForReview": "Boolean",
  "id": "String (identifier)",
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
  "sessionLifetimePolicies": [{"@odata.type": "microsoft.graph.sessionLifetimePolicy"}],
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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "signIn resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
