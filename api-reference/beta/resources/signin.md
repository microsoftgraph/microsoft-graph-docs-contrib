---
title: "signIn resource type"
doc_type: resourcePageType
description: "Provides details about user or application sign-in activity in your directory."
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
---


# signIn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides details about user or application sign-in activity in your directory. You must have a Microsoft Entra ID P1 or P2 license to download sign-in logs using the Microsoft Graph API.

The [Microsoft Entra data retention policies](/azure/active-directory/reports-monitoring/reference-reports-data-retention#how-long-does-azure-ad-store-the-data) govern the availability of sign-in logs.

## Methods

| Method           | Return Type    |Description|
|:---------------|:--------|:----------|
|[List signIn](../api/signin-list.md) | [signIn](signin.md) |Read properties and relationships of signIn objects.|
|[Get signIn](../api/signin-get.md) | [signIn](signin.md) |Read properties and relationships of a signIn object.|
|[Confirm compromised](../api/signin-confirmcompromised.md)|None|Mark an event in the Microsoft Entra sign-in logs as risky.|
|[Confirm safe](../api/signin-confirmsafe.md)|None|mark an event in Microsoft Entra sign-in logs as safe.|

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|appDisplayName|String|The application name displayed in the Microsoft Entra admin center. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|appId|String|The application identifier in Microsoft Entra ID. <br/><br/> Supports `$filter` (`eq`).|
|appliedConditionalAccessPolicies|[appliedConditionalAccessPolicy](appliedconditionalaccesspolicy.md) collection|A list of conditional access policies that the corresponding sign-in activity triggers. Apps need more Conditional Access-related privileges to read the details of this property. For more information, see [Viewing applied conditional access (CA) policies in sign-ins](../api/signin-list.md#viewing-applied-conditional-access-ca-policies-in-sign-ins).|
|appliedEventListeners|[appliedAuthenticationEventListener](../resources/appliedauthenticationeventlistener.md) collection|Detailed information about the listeners, such as Azure Logic Apps and Azure Functions, which the corresponding events in the sign-in event triggered.|
|appTokenProtectionStatus|tokenProtectionStatus|Token protection creates a cryptographically secure tie between the token and the device it's issued to. This field indicates whether the app token was bound to the device.|
|authenticationAppDeviceDetails|[authenticationAppDeviceDetails](../resources/authenticationappdevicedetails.md)|Provides details about the app and device used during a Microsoft Entra authentication step.|
|authenticationAppPolicyEvaluationDetails|[authenticationAppPolicyDetails](../resources/authenticationapppolicydetails.md) collection|Provides details of the Microsoft Entra policies applied to a user and client authentication app during an authentication step.|
|authenticationContextClassReferences|[authenticationContext](authenticationcontext.md) collection|Contains a collection of values that represent the conditional access authentication contexts applied to the sign-in.|
|authenticationDetails|[authenticationDetail](authenticationdetail.md) collection|The result of the authentication attempt and more details on the authentication method.|
|authenticationMethodsUsed|String collection|The authentication methods used. Possible values: `SMS`, `Authenticator App`, `App Verification code`, `Password`, `FIDO`, `PTA`, or `PHS`.|
|authenticationProcessingDetails|[keyValue](keyvalue.md) collection|More authentication processing details, such as the agent name for  PTA and PHS, or a server or farm name for federated authentication.|
|authenticationProtocol|protocolType|Lists the protocol type or grant type used in the authentication. The possible values are: `none`, `oAuth2`, `ropc`, `wsFederation`, `saml20`, `deviceCode`, `unknownFutureValue`, `authenticationTransfer`, `nativeAuth`. Use `none` for all authentications that don't have a specific value in that list. You must use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `authenticationTransfer`, `nativeAuth`. |
|authenticationRequirement | String | This holds the highest level of authentication needed through all the sign-in steps, for sign-in to succeed. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|authenticationRequirementPolicies|[authenticationRequirementPolicy](../resources/authenticationrequirementpolicy.md) collection|Sources of authentication requirement, such as conditional access, per-user MFA, identity protection, and security defaults.|
|autonomousSystemNumber|Int32|The Autonomous System Number (ASN) of the network used by the actor.|
|azureResourceId|String|Contains a fully qualified Azure Resource Manager ID of an Azure resource accessed during the sign-in.|
|clientAppUsed|String|The legacy client used for sign-in activity. For example: `Browser`, `Exchange ActiveSync`, `Modern clients`, `IMAP`, `MAPI`, `SMTP`, or `POP`. <br/><br/> Supports `$filter` (`eq`). |
|clientCredentialType|clientCredentialType|Describes the credential type that a user client or service principal provided to Microsoft Entra ID to authenticate itself. You can review this property to track and eliminate less secure credential types or to watch for clients and service principals using anomalous credential types. The possible values are: `none`, `clientSecret`, `clientAssertion`, `federatedIdentityCredential`, `managedIdentity`, `certificate`, `unknownFutureValue`.|
|conditionalAccessAudiences|String|A list that indicates the audience that was evaluated by Conditional Access during a sign-in event. <br/><br/> Supports `$filter` (`eq`).|
|conditionalAccessStatus|conditionalAccessStatus| The status of the conditional access policy triggered. Possible values: `success`, `failure`, `notApplied`, or `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`).|
|correlationId|String|The identifier the client sends when sign-in is initiated. This is used for troubleshooting the corresponding sign-in activity when calling for support. <br/><br/> Supports `$filter` (`eq`).|
|createdDateTime|DateTimeOffset|The date and time the sign-in was initiated. The Timestamp type is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. <br/><br/> Supports `$orderby`, `$filter` (`eq`, `le`, and `ge`).|
|crossTenantAccessType|signInAccessType|Describes the type of cross-tenant access used by the actor to access the resource. Possible values are: `none`, `b2bCollaboration`, `b2bDirectConnect`, `microsoftSupport`, `serviceProvider`, `unknownFutureValue`, `passthrough`. Also, you must use the `Prefer: include-unknown-enum-members` request header to get the following value or values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `passthrough`. If the sign in didn't cross tenant boundaries, the value is `none`.|
|deviceDetail|[deviceDetail](devicedetail.md)|The device information from where the sign-in occurred. Includes information such as deviceId, OS, and browser. <br/><br/> Supports `$filter` (`eq`, `startsWith`) on **browser** and **operatingSystem** properties.|
|federatedCredentialId|String|Contains the identifier of an application's federated identity credential, if a federated identity credential was used to sign in.|
|flaggedForReview|Boolean|During a failed sign-in, a user can select a button in the Azure portal to mark the failed event for tenant admins. If a user selects the button to flag the failed sign-in, this value is `true`.|
|globalSecureAccessIpAddress|String|The Global Secure Access IP address that the sign-in was initiated from.|
|homeTenantId|String|The tenant identifier of the user initiating the sign-in. Not applicable in Managed Identity or service principal sign ins.|
|homeTenantName|String|For user sign ins, the identifier of the tenant that the user is a member of. Only populated in cases where the home tenant has provided affirmative consent to Microsoft Entra ID to show the tenant content.|
|id|String|The identifier representing the sign-in activity. Inherited from [entity](entity.md). <br/><br/> Supports `$filter` (`eq`).|
|incomingTokenType|incomingTokenType|Indicates the token types that were presented to Microsoft Entra ID to authenticate the actor in the sign in. The possible values are: `none`, `primaryRefreshToken`, `saml11`, `saml20`, `unknownFutureValue`, `remoteDesktopToken`. <br><br> **NOTE** Microsoft Entra ID might have also used token types not listed in this enum type to authenticate the actor. Don't infer the lack of a token if it isn't one of the types listed. Also, you must use the `Prefer: include-unknown-enum-members` request header to get the following value or values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `remoteDesktopToken`.|
|ipAddress|String|The IP address of the client from where the sign-in occurred. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|ipAddressFromResourceProvider|String|The IP address a user used to reach a resource provider, used to determine Conditional Access compliance for some policies. For example, when a user interacts with Exchange Online, the IP address that Microsoft Exchange receives from the user can be recorded here. This value is often `null`.|
|isInteractive|Boolean|Indicates whether a user sign in is interactive. In interactive sign in, the user provides an authentication factor to Microsoft Entra ID. These factors include passwords, responses to MFA challenges, biometric factors, or QR codes that a user provides to Microsoft Entra ID or an associated app. In non-interactive sign in, the user doesn't provide an authentication factor. Instead, the client app uses a token or code to authenticate or access a resource on behalf of a user. Non-interactive sign ins are commonly used for a client to sign in on a user's behalf in a process transparent to the user.|
|isTenantRestricted|Boolean|Shows whether the sign in event was subject to a Microsoft Entra tenant restriction policy.|
|isThroughGlobalSecureAccess|Boolean|Indicates whether a user came through Global Secure Access service.|
|location|[signInLocation](signinlocation.md)|The city, state, and two letter country code from where the sign-in occurred. <br/><br/> Supports `$filter` (`eq`, `startsWith`) on **city**, **state**, and **countryOrRegion** properties.|
|managedServiceIdentity|[managedIdentity](../resources/managedidentity.md)|Contains information about the managed identity used for the sign in, including its type, associated Azure Resource Manager (ARM) resource ID, and federated token information.|
|networkLocationDetails|[networkLocationDetail](networklocationdetail.md) collection|The network location details including the type of network used and its names.|
|originalRequestId|String|The request identifier of the first request in the authentication sequence. <br/><br/> Supports `$filter` (`eq`).|
|originalTransferMethod|originalTransferMethods|Transfer method used to initiate a session throughout all subsequent request. The possible values are: `none`, `deviceCodeFlow`, `authenticationTransfer`, `unknownFutureValue`.|
|privateLinkDetails|[privateLinkDetails](../resources/privatelinkdetails.md)|Contains information about the Microsoft Entra Private Link policy that is associated with the sign in event.|
|processingTimeInMilliseconds|Int|The request processing time in milliseconds in AD STS.|
|resourceDisplayName|String|The name of the resource that the user signed in to. <br/><br/> Supports `$filter` (`eq`).|
|resourceId|String|The identifier of the resource that the user signed in to. <br/><br/> Supports `$filter` (`eq`).|
|resourceServicePrincipalId|String|The identifier of the service principal representing the target resource in the sign-in event.|
|resourceTenantId|String|The tenant identifier of the resource referenced in the sign in.|
|riskDetail|riskDetail|The reason behind a specific state of a risky user, sign-in, or a risk event. The possible values are `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, `unknownFutureValue`, `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`, `m365DAdminDismissedDetection`, `userChangedPasswordOnPremises`, `adminDismissedRiskForSignIn`, `adminConfirmedAccountSafe`.  You must use the `Prefer: include-unknown-enum-members` request header to get the following value or values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`, `m365DAdminDismissedDetection`, `userChangedPasswordOnPremises`, `adminDismissedRiskForSignIn`, `adminConfirmedAccountSafe`.The value `none` means that Microsoft Entra risk detection hasn't flagged the user or the sign-in as a risky event so far. <br/><br/> Supports `$filter` (`eq`).<br> **Note:** Details for this property are only available for Microsoft Entra ID P2 customers. All other customers are returned `hidden`.|
|riskEventTypes_v2|String collection|The list of risk event types associated with the sign-in. Possible values: `unlikelyTravel`, `anonymizedIPAddress`, `maliciousIPAddress`, `unfamiliarFeatures`, `malwareInfectedIPAddress`, `suspiciousIPAddress`, `leakedCredentials`, `investigationsThreatIntelligence`,  `generic`, or `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|riskLevelAggregated|riskLevel|The aggregated risk level. Possible values: `none`, `low`, `medium`, `high`, `hidden`, or `unknownFutureValue`. The value `hidden` means the user or sign-in wasn't enabled for Microsoft Entra ID Protection. <br/><br/> Supports `$filter` (`eq`). <br>**Note:** Details for this property are only available for Microsoft Entra ID P2 customers. All other customers are returned `hidden`.|
|riskLevelDuringSignIn|riskLevel|The risk level during sign-in. Possible values: `none`, `low`, `medium`, `high`, `hidden`, or `unknownFutureValue`. The value `hidden` means the user or sign-in wasn't enabled for Microsoft Entra ID Protection. <br/><br/> Supports `$filter` (`eq`). <br>**Note:** Details for this property are only available for Microsoft Entra ID P2 customers. All other customers are returned `hidden`.|
|riskState|riskState|The risk state of a risky user, sign-in, or a risk event. Possible values: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, or `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`).|
|servicePrincipalCredentialKeyId|String|The unique identifier of the key credential used by the service principal to authenticate.|
|servicePrincipalCredentialThumbprint|String|The certificate thumbprint of the certificate used by the service principal to authenticate.|
|servicePrincipalId|String|The application identifier used for sign-in. This field is populated when you're signing in using an application. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|servicePrincipalName|String|The application name used for sign-in. This field is populated when you're signing in using an application. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|sessionLifetimePolicies|[sessionLifetimePolicy](sessionlifetimepolicy.md) collection|Any conditional access session management policies that were applied during the sign-in event.|
|signInEventTypes|String collection|Indicates the category of sign in that the event represents. For user sign ins, the category can be `interactiveUser` or `nonInteractiveUser` and corresponds to the value for the **isInteractive** property on the signin resource. For managed identity sign ins, the category is `managedIdentity`. For service principal sign-ins, the category is **servicePrincipal**. Possible values are: `interactiveUser`, `nonInteractiveUser`, `servicePrincipal`, `managedIdentity`, `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`, `ne`).|
|signInIdentifier|String|The identification that the user provided to sign in. It can be the userPrincipalName, but is also populated when a user signs in using other identifiers.|
|signInIdentifierType|signInIdentifierType|The type of sign in identifier. Possible values are: `userPrincipalName`, `phoneNumber`, `proxyAddress`, `qrCode`, `onPremisesUserPrincipalName`, `unknownFutureValue`.|
|signInTokenProtectionStatus|tokenProtectionStatus|Token protection creates a cryptographically secure tie between the token and the device it's issued to. This field indicates whether the signin token was bound to the device or not. The possible values are: `none`, `bound`, `unbound`, `unknownFutureValue`.|
|status|[signInStatus](signinstatus.md)|The sign-in status. Includes the error code and description of the error (for a sign-in failure). <br/><br/> Supports `$filter` (`eq`) on **errorCode** property.|
|tokenIssuerName|String|The name of the identity provider. For example, `sts.microsoft.com`. <br/><br/> Supports `$filter` (`eq`).|
|tokenIssuerType|tokenIssuerType|The type of identity provider. The possible values are: `AzureAD`, `ADFederationServices`, `UnknownFutureValue`, `AzureADBackupAuth`, `ADFederationServicesMFAAdapter`, `NPSExtension`. You must use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `AzureADBackupAuth` , `ADFederationServicesMFAAdapter` , `NPSExtension`.|
|uniqueTokenIdentifier|String|A unique base64 encoded request identifier used to track tokens issued by Microsoft Entra ID as they're redeemed at resource providers. |
|userAgent|String|The user agent information related to sign-in. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|userDisplayName|String|The display name of the user. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|userId|String|The identifier of the user. <br/><br/> Supports `$filter` (`eq`).|
|userPrincipalName|String|The UPN of the user. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|userType|signInUserType|Identifies whether the user is a member or guest in the tenant. Possible values are: `member`, `guest`, `unknownFutureValue`.|
|mfaDetail (deprecated)|[mfaDetail](../resources/mfadetail.md)|This property is deprecated.|


## Relationships
None


## JSON representation

The following JSON representation shows the resource type.
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
  "appTokenProtectionStatus": {
      "@odata.type": "microsoft.graph.tokenProtectionStatus"
  },
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
  "originalTransferMethod": "String",
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
  "sessionLifetimePolicies": [{"@odata.type": "microsoft.graph.sessionLifetimePolicy"}],
  "signInEventTypes": [
    "String"
  ],
  "signInIdentifier": "String",
  "signInIdentifierType": "String",
  "signInTokenProtectionStatus": "String",
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
