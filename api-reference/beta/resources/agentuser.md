---
title: "agentUser resource type"
description: "Represents a specialized subtype of user identity in Microsoft Entra ID designed for AI-powered applications (agents) that need to function as digital workers."
author: "yyuank"
ms.reviewer: "iamut"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: entra-users
doc_type: resourcePageType
---

# agentUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specialized subtype of [user](../resources/user.md) identity in Microsoft Entra ID designed for AI-powered applications (agents) that need to function as digital workers. Agent users enable agents to access APIs and services that specifically require user identities, receiving tokens with `idtyp=user` claims.

Each agent user maintains a one-to-one relationship with a parent agent identity and is authenticated through that parent's credentials. Agent users have user-like capabilities such as being added to groups, assigned licenses, and accessing collaborative features like mailboxes and chat, while operating under security constraints including no password authentication, no privileged admin role assignments, and permissions similar to guest users.

Inherits from [user](../resources/user.md).

This resource is an open type that allows additional properties beyond those documented here.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountEnabled|Boolean|`true` if the account is enabled; otherwise, `false`. This property is required when a user is created. Inherited from [user](../resources/user.md).|
|ageGroup|String|Sets the age group of the user. Allowed values: `null`, `Minor`, `NotAdult`, and `Adult`. For more information, see [legal age group property definitions](#legal-age-group-property-definitions). Inherited from [user](../resources/user.md).|
|agentIdentityBlueprintId|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|alternativeSecurityIds|[alternativeSecurityId](../resources/alternativesecurityid.md) collection|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|assignedLicenses|[assignedLicense](../resources/assignedlicense.md) collection|The licenses that are assigned to the user, including inherited (group-based) licenses. This property doesn't differentiate between directly assigned and inherited licenses. Use the **licenseAssignmentStates** property to identify the directly assigned and inherited licenses. Not nullable. Inherited from [user](../resources/user.md).|
|assignedPlans|[assignedPlan](../resources/assignedplan.md) collection|The plans that are assigned to the user. Read-only. Not nullable. Inherited from [user](../resources/user.md).|
|assistantName|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|assistantTelephone|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|authorizationInfo|[authorizationInfo](../resources/authorizationinfo.md)|Identifiers that can be used to identify and authenticate a user in non-Azure AD environments. This property can store identifiers for smartcard-based certificates that users use to access on-premises Active Directory deployments or federated access. It can also be used to store the Subject Alternate Name (SAN) that's associated with a Common Access Card (CAC). Nullable. Inherited from [user](../resources/user.md).|
|businessPhones|String collection|The telephone numbers for the user. Only one number can be set for this property. Read-only for users synced from on-premises directory. Inherited from [user](../resources/user.md).|
|certificateAuthenticationMethods|[nonSecretCredential](../resources/nonsecretcredential.md) collection|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|city|String|The city where the user is located. Maximum length is 128 characters. Inherited from [user](../resources/user.md).|
|cloudLegacyExchangeDN|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|cloudMSExchArchiveStatus|Int32|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|cloudMSExchBlockedSendersHash|Binary|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|cloudMSExchRecipientDisplayType|Int32|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|cloudMSExchSafeRecipientsHash|Binary|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|cloudMSExchSafeSendersHash|Binary|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|cloudMSExchTeamMailboxExpiration|DateTimeOffset|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|cloudMSExchTeamMailboxSharePointUrl|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|cloudMSExchUCVoiceMailSettings|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|cloudMSExchUserHoldPolicies|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|cloudRealtimeCommunicationInfo|[cloudRealtimeCommunicationInfo](../resources/cloudrealtimecommunicationinfo.md)|Microsoft realtime communication information related to the user. Inherited from [user](../resources/user.md).|
|companyName|String|The name of the company the user is associated with. This property can be useful for describing the company that an external user comes from. The maximum length is 64 characters. Inherited from [user](../resources/user.md).|
|consentProvidedForMinor|String|Sets whether consent has been obtained for minors. Allowed values: `null`, `Granted`, `Denied` and `NotRequired`. Refer to the [legal age group property definitions](#legal-age-group-property-definitions) for further information. Inherited from [user](../resources/user.md).|
|country|String|The country or region where the user is located; for example, `US` or `UK`. Maximum length is 128 characters. Inherited from [user](../resources/user.md).|
|countryCode|Int32|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|createdDateTime|DateTimeOffset|The date and time the user was created in ISO 8601 format and UTC. The value cannot be modified and is automatically populated when the entity is created. Nullable. For on-premises users, the value represents when they were first created in Microsoft Entra ID. Property is `null` for some users created before June 2018 and on-premises users synced to Microsoft Entra ID before June 2018. Read-only. Inherited from [user](../resources/user.md).|
|creationType|String|Indicates whether the user account was created through one of the following methods: As a regular school or work account (`null`); As an external account (`Invitation`); As a local account for an Azure Active Directory B2C tenant (`LocalAccount`); Through self-service sign-up by an internal user using email verification (`EmailVerified`); Through self-service sign-up by an external user signing up through a link that is part of a user flow (`SelfServiceSignUp`). Read-only. Inherited from [user](../resources/user.md).|
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|An open complex type that holds the value of a custom security attribute that is assigned to a directory object. Nullable. Inherited from [user](../resources/user.md).|
|deletedDateTime|DateTimeOffset|The date and time the user was deleted. Inherited from [directoryObject](../resources/directoryobject.md).|
|department|String|The name of the department where the user works. Maximum length is 64 characters. Inherited from [user](../resources/user.md).|
|description|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|deviceKeys|[deviceKey](../resources/devicekey.md) collection|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|displayName|String|The name displayed in the address book for the user. This value is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created, and it cannot be cleared during updates. Maximum length is 256 characters. Inherited from [user](../resources/user.md).|
|eamCredentials|[nonSecretCredential](../resources/nonsecretcredential.md) collection|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|employeeHireDate|DateTimeOffset|The date and time when the user was hired or will start work if there is a future hire. Inherited from [user](../resources/user.md).|
|employeeId|String|The employee identifier assigned to the user by the organization. The maximum length is 16 characters. Inherited from [user](../resources/user.md).|
|employeeLeaveDateTime|DateTimeOffset|The date and time when the user left or will leave the organization. To read this property, the calling app must be assigned the *User-LifeCycleInfo.Read.All* permission. To write this property, the calling app must be assigned the *User.Read.All* and *User-LifeCycleInfo.ReadWrite.All* permissions. To read this property in delegated scenarios, the admin needs at least one of the following Microsoft Entra roles: *Lifecycle Workflows Administrator* (least privilege), *Global Reader*. To write this property in delegated scenarios, the admin needs the *Global Administrator* role. For more information, see [Configure the employeeLeaveDateTime property for a user](/graph/tutorial-lifecycle-workflows-set-employeeleavedatetime). Inherited from [user](../resources/user.md).|
|employeeOrgData|[employeeOrgData](../resources/employeeorgdata.md)|Represents organization data (for example, division and costCenter) associated with a user. Inherited from [user](../resources/user.md).|
|employeeType|String|Captures enterprise worker type. For example, `Employee`, `Contractor`, `Consultant`, or `Vendor`. Inherited from [user](../resources/user.md).|
|externalUserInformation|[externalUserInformation](../resources/externaluserinformation.md)|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|externalUserState|String|For an external user invited to the tenant using the [invitation API](../api/invitation-post.md), this property represents the invited user's invitation status. For invited users, the state can be `PendingAcceptance` or `Accepted`, or `null` for all other users. Inherited from [user](../resources/user.md).|
|externalUserStateChangeDateTime|String|Shows the timestamp for the latest change to the externalUserState property. Inherited from [user](../resources/user.md).|
|faxNumber|String|The fax number of the user. Inherited from [user](../resources/user.md).|
|federatedIdentityCredentials|[nonSecretCredential](../resources/nonsecretcredential.md) collection|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|givenName|String|The given name (first name) of the user. Maximum length is 64 characters. Inherited from [user](../resources/user.md).|
|homePhone|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|id|String|The unique identifier for the user. It should be treated as an opaque identifier. Inherited from [directoryObject](../resources/directoryobject.md). Not nullable. Read-only. Inherits from [entity](../resources/entity.md)|
|identities|[objectIdentity](../resources/objectidentity.md) collection|Represents the identities that can be used to sign in to this user account. An identity can be provided by Microsoft (also known as a local account), by organizations, or by social identity providers such as Facebook, Google, and Microsoft and tied to a user account. It may contain multiple items with the same **signInType** value. Inherited from [user](../resources/user.md).|
|identityParentId|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|imAddresses|String collection|The instant message voice-over IP (VOIP) session initiation protocol (SIP) addresses for the user. Read-only. Inherited from [user](../resources/user.md).|
|info|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|infoCatalogs|String collection|Identifies the info segments assigned to the user. Inherited from [user](../resources/user.md).|
|initials|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|isLicenseReconciliationNeeded|Boolean|Indicates whether the user is pending an exchange mailbox license assignment. Read-only. Inherited from [user](../resources/user.md).|
|isManagementRestricted|Boolean|`true` if the user is a member of a restricted management administrative unit. If not set, the default value is `null` and the default behavior is false. Read-only. To manage a user who is a member of a restricted management administrative unit, the administrator or calling app must be assigned a Microsoft Entra role at the scope of the restricted management administrative unit. Inherited from [user](../resources/user.md).|
|isResourceAccount|Boolean|Do not use – reserved for future use. Inherited from [user](../resources/user.md).|
|jobTitle|String|The user's job title. Maximum length is 128 characters. Inherited from [user](../resources/user.md).|
|lastPasswordChangeDateTime|DateTimeOffset|When this Microsoft Entra user last changed their password or when their password was created, whichever date the latest action was performed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [user](../resources/user.md).|
|legalAgeGroupClassification|String|Used by enterprise applications to determine the legal age group of the user. This property is read-only and calculated based on **ageGroup** and **consentProvidedForMinor** properties. Allowed values: `null`, `Undefined`, `MinorWithOutParentalConsent`, `MinorWithParentalConsent`, `MinorNoParentalConsentRequired`, `NotAdult`, and `Adult`. For more information, see [legal age group property definitions](#legal-age-group-property-definitions). Inherited from [user](../resources/user.md).|
|letterCountryCode|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|licenseAssignmentStates|[licenseAssignmentState](../resources/licenseassignmentstate.md) collection|State of license assignments for this user. It also indicates licenses that are directly assigned and the ones the user inherited through group memberships. Read-only. Inherited from [user](../resources/user.md).|
|lifecycle|[lifecycle](../resources/lifecycle.md)|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|mail|String|The SMTP address for the user, for example, `admin@contoso.com`. Changes to this property also update the user's **proxyAddresses** collection to include the value as an SMTP address. This property can't contain accent characters. NOTE: We don't recommend updating this property for Azure AD B2C user profiles. Use the **otherMails** property instead. Inherited from [user](../resources/user.md).|
|mailNickname|String|The mail alias for the user. This property must be specified when a user is created. Maximum length is 64 characters. Inherited from [user](../resources/user.md).|
|mobilePhone|String|The primary cellular telephone number for the user. Read-only for users synced from the on-premises directory. Inherited from [user](../resources/user.md).|
|msExchange|[msExchange](../resources/msexchange.md)|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|netId|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|officeLocation|String|The office location in the user's place of business. Maximum length is 128 characters. Inherited from [user](../resources/user.md).|
|onPremisesDistinguishedName|String|Contains the on-premises Active Directory `distinguished name` or `DN`. Inherited from [user](../resources/user.md).|
|onPremisesDomainName|String|Contains the on-premises `domainFQDN`, also called dnsDomainName synchronized from the on-premises directory. Inherited from [user](../resources/user.md).|
|onPremisesExtensionAttributes|[onPremisesExtensionAttributes](../resources/onpremisesextensionattributes.md)|Contains extensionAttributes1-15 for the user. These extension attributes are also known as Exchange custom attributes 1-15. Each attribute can store up to 1024 characters. For an **onPremisesSyncEnabled** user, the source of authority for this set of properties is the on-premises and is read-only. For a cloud-only user (where **onPremisesSyncEnabled** is `false`), these properties can be set during the creation or update of a user object. For a cloud-only user previously synced from on-premises Active Directory, these properties are read-only in Microsoft Graph but can be fully managed through the Exchange Admin Center or the Exchange Online V2 module in PowerShell. Inherited from [user](../resources/user.md).|
|onPremisesImmutableId|String|This property associates an on-premises Active Directory user account to their Microsoft Entra user object. This property must be specified when creating a new user account in the Graph if you're using a federated domain for the user's `userPrincipalName` (UPN) property. **Note:** The **$** and **\_** characters can't be used when specifying this property. Inherited from [user](../resources/user.md).|
|onPremisesLastSyncDateTime|DateTimeOffset|Indicates the last time at which the object was synced with the on-premises directory; for example: "2013-02-16T03:04:54Z". The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [user](../resources/user.md).|
|onPremisesObjectIdentifier|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|onPremisesProvisioningErrors|[onPremisesProvisioningError](../resources/onpremisesprovisioningerror.md) collection|Errors when using Microsoft synchronization product during provisioning. Inherited from [user](../resources/user.md).|
|onPremisesSamAccountName|String|Contains the on-premises `sAMAccountName` synchronized from the on-premises directory. Inherited from [user](../resources/user.md).|
|onPremisesSecurityIdentifier|String|Contains the on-premises security identifier (SID) for the user synchronized from on-premises to the cloud. Must be in the format of SID, such as "S-1-5-21-1180699209-877415012-3182824384-1006". Inherited from [user](../resources/user.md).|
|onPremisesSipInfo|[onPremisesSipInfo](../resources/onpremisessipinfo.md)|Contains all on-premises Session Initiation Protocol (SIP) information related to the user. Read-only. Inherited from [user](../resources/user.md).|
|onPremisesSyncEnabled|Boolean|`true` if this user object is currently being synced from an on-premises Active Directory (AD); otherwise, the user isn't being synced and can be managed in Microsoft Entra ID. Read-only. Inherited from [user](../resources/user.md).|
|onPremisesUserPrincipalName|String|Contains the on-premises `userPrincipalName` synchronized from the on-premises directory. Inherited from [user](../resources/user.md).|
|originTenantInfo|[crossTenantResource](../resources/crosstenantresource.md)|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|otherFaxNumbers|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|otherHomePhones|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|otherMails|String collection|A list of additional email addresses for the user; for example: `["bob@contoso.com", "Robert@fabrikam.com"]`. Can store up to 250 values, each with a limit of 250 characters. NOTE: This property can't contain accent characters. Inherited from [user](../resources/user.md).|
|otherTelephones|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|pager|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|passwordPolicies|String|Specifies password policies for the user. This value is an enumeration with one possible value being `DisableStrongPassword`, which allows weaker passwords than the default policy to be specified. `DisablePasswordExpiration` can also be specified. The two may be specified together; for example: `DisablePasswordExpiration, DisableStrongPassword`. For more information on the default password policies, see [Microsoft Entra password policies](/azure/active-directory/authentication/concept-sspr-policy#password-policies-that-only-apply-to-cloud-user-accounts). Inherited from [user](../resources/user.md).|
|passwordProfile|[passwordProfile](../resources/passwordprofile.md)|Specifies the password profile for the user. The profile contains the user's password. This property is required when a user is created. The password in the profile must satisfy minimum requirements as specified by the **passwordPolicies** property. By default, a strong password is required. *User-PasswordProfile.ReadWrite.All* is the least privileged permission to update this property. In delegated scenarios, the *User Administrator* Microsoft Entra role is the least privileged admin role supported to update this property for nonadmin users. *Privileged Authentication Administrator* is the least privileged role that's allowed to update this property for *all* administrators in the tenant. In general, the signed-in user must have a higher privileged administrator role as indicated in [Who can reset passwords](../resources/users.md#who-can-reset-passwords). In app-only scenarios, the calling app must be assigned a supported permission *and* at least the *User Administrator* Microsoft Entra role. Inherited from [user](../resources/user.md).|
|perUserMfaState|perUserMfaState|**TODO: Add Description** Inherited from [user](../resources/user.md). The possible values are: `disabled`, `enforced`, `enabled`, `unknownFutureValue`.|
|portalSetting|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|postalCode|String|The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code. Maximum length is 40 characters. Inherited from [user](../resources/user.md).|
|postOfficeBoxes|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|preferredDataLocation|String|The preferred data location for the user. For more information, see [OneDrive Online Multi-Geo](/sharepoint/dev/solution-guidance/multigeo-introduction). Inherited from [user](../resources/user.md).|
|preferredLanguage|String|The preferred language for the user. The preferred language format is based on RFC 4646. The name combines an ISO 639 two-letter lowercase culture code associated with the language and an ISO 3166 two-letter uppercase subculture code associated with the country or region. Example: "en-US", or "es-ES". Inherited from [user](../resources/user.md).|
|provisionedPlans|[provisionedPlan](../resources/provisionedplan.md) collection|The plans that are provisioned for the user. Read-only. Not nullable. Inherited from [user](../resources/user.md).|
|proxyAddresses|String collection|For example: `["SMTP: bob@contoso.com", "smtp: bob@sales.contoso.com"]`. Changes to the **mail** property also update this collection to include the value as an SMTP address. For more information, see [mail and proxyAddresses properties](#mail-and-proxyaddresses-properties). The proxy address prefixed with `SMTP` (capitalized) is the primary proxy address, while the ones prefixed with `smtp` are the secondary proxy addresses. For Azure AD B2C accounts, this property has a limit of 10 unique addresses. Read-only in Microsoft Graph; you can update this property only through the [Microsoft 365 admin center](/exchange/recipients-in-exchange-online/manage-user-mailboxes/add-or-remove-email-addresses). Not nullable. Inherited from [user](../resources/user.md).|
|purviewInsiderRiskLevel|purviewInsiderRiskLevel|**TODO: Add Description** Inherited from [user](../resources/user.md). The possible values are: `none`, `minor`, `moderate`, `elevated`, `unknownFutureValue`.|
|qrCodeCredentials|[nonSecretCredential](../resources/nonsecretcredential.md) collection|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|qrPinCredential|[secretCredential](../resources/secretcredential.md)|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|qrPinHistory|[encryptedSecret](../resources/encryptedsecret.md)|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|refreshTokensValidFromDateTime|DateTimeOffset|Any refresh tokens or sessions tokens (session cookies) issued before this time are invalid, and applications get an error when using an invalid refresh or sessions token to acquire a delegated access token (to access APIs such as Microsoft Graph). If it happens, the application must acquire a new refresh token by requesting the authorized endpoint. Read-only. Use [invalidateAllRefreshTokens](../api/user-invalidateallrefreshtokens.md) to reset. Inherited from [user](../resources/user.md).|
|releaseTrack|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|securityIdentifier|String|Security identifier (SID) of the user, used in Windows scenarios. Read-only. Returned by default. Inherited from [user](../resources/user.md).|
|serviceOriginatedResources|[serviceOriginatedResource](../resources/serviceoriginatedresource.md) collection|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|serviceProvisioningErrors|[serviceProvisioningError](../resources/serviceprovisioningerror.md) collection|Errors published by a federated service describing a nontransient, service-specific error regarding the properties or link from a user object. Inherited from [user](../resources/user.md).|
|showInAddressList|Boolean|**Do not use in Microsoft Graph. Manage this property through the Microsoft 365 admin center instead.** Represents whether the user should be included in the Outlook global address list. See [Known issue](https://developer.microsoft.com/en-us/graph/known-issues/?search=14972). Inherited from [user](../resources/user.md).|
|signInSessionsValidFromDateTime|DateTimeOffset|Any refresh tokens or sessions tokens (session cookies) issued before this time are invalid, and applications get an error when using an invalid refresh or sessions token to acquire a delegated access token (to access APIs such as Microsoft Graph). If this happens, the application must acquire a new refresh token by requesting the authorized endpoint. Read-only. Use [revokeSignInSessions](../api/user-revokesigninsessions.md) to reset. Inherited from [user](../resources/user.md).|
|state|String|The state or province in the user's address. Maximum length is 128 characters. Inherited from [user](../resources/user.md).|
|streetAddress|String|The street address of the user's place of business. Maximum length is 1024 characters. Inherited from [user](../resources/user.md).|
|surname|String|The user's surname (family name or last name). Maximum length is 64 characters. Inherited from [user](../resources/user.md).|
|temporaryAccessPass|[temporaryAccessPass](../resources/temporaryaccesspass.md)|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|usageLocation|String|A two-letter country code (ISO standard 3166). Required for users that are assigned licenses due to legal requirements to check for availability of services in countries. Examples include: `US`, `JP`, and `GB`. Not nullable. Inherited from [user](../resources/user.md).|
|userCertificate|Binary collection|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|userPrincipalName|String|The user principal name (UPN) of the user. The UPN is an Internet-style sign-in name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where the domain must be present in the tenant's verified domain collection. This property is required when a user is created. The verified domains for the tenant can be accessed from the **verifiedDomains** property of [organization](organization.md). NOTE: This property can't contain accent characters. Only the following characters are allowed `A - Z`, `a - z`, `0 - 9`, `' . - _ ! # ^ ~`. For the complete list of allowed characters, see [username policies](/azure/active-directory/authentication/concept-sspr-policy#userprincipalname-policies-that-apply-to-all-user-accounts). Inherited from [user](../resources/user.md).|
|userSMIMECertificate|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md).|
|userType|String|A String value that can be used to classify user types in your directory. The possible values are `Member` and `Guest`. **NOTE:** For more information about the permissions for member and guest users, see [What are the default user permissions in Microsoft Entra ID?](/azure/active-directory/fundamentals/users-default-permissions?context=graph/context#member-and-guest-users) Inherited from [user](../resources/user.md).|
|wwwHomepage|String|**TODO: Add Description** Inherited from [user](../resources/user.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|applicationPasswords|[applicationPassword](../resources/applicationpassword.md) collection|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|appRoleAssignedResources|[servicePrincipal](../resources/serviceprincipal.md) collection|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|appRoleAssignments|[appRoleAssignment](../resources/approleassignment.md) collection|Represents the app roles a user has been granted for an application. Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|cloudMSExchDelegates|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|cloudMSExchTeamMailboxOwners|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|cloudPublicDelegates|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|createdObjects|[directoryObject](../resources/directoryobject.md) collection|Directory objects that the user created. Read-only. Nullable. Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|directReports|[directoryObject](../resources/directoryobject.md) collection|The users and contacts that report to the user. (The users and contacts with their manager property set to this user.) Read-only. Nullable. Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|directSourceOfAuthorityPolicy|[sourceOfAuthorityPolicy](../resources/sourceofauthoritypolicy.md)|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|dpapiEncryptionKeys|[dpapiData](../resources/dpapidata.md) collection|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|identityParent|[agentIdentity](../resources/agentidentity.md)|**TODO: Add Description**|
|invitedBy|[directoryObject](../resources/directoryobject.md)|The user or service principal that invited the user. Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|invitedUsers|[user](../resources/user.md) collection|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|licenseDetails|[licenseDetails](../resources/licensedetails.md) collection|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|manager|[directoryObject](../resources/directoryobject.md)|The user or contact that is this user's manager. Read-only. Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|memberOf|[directoryObject](../resources/directoryobject.md) collection|The groups, directory roles, and administrative units that the user is a member of. Read-only. Nullable. Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|oauth2PermissionGrants|[oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) collection|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|onPremisesSyncBehavior|[onPremisesSyncBehavior](../resources/onpremisessyncbehavior.md)|Indicates the state of synchronization for a user between the cloud and on-premises Active Directory. Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|organizationalUnitParent|[organizationalUnit](../resources/organizationalunit.md)|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|ownedDevices|[directoryObject](../resources/directoryobject.md) collection|Devices owned by the user. Read-only. Nullable. Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|ownedObjects|[directoryObject](../resources/directoryobject.md) collection|Directory objects owned by the user. Read-only. Nullable. Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|registeredDevices|[directoryObject](../resources/directoryobject.md) collection|Devices that are registered for the user. Read-only. Nullable. Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|resourceTenantDataSharingConsents|[resourceTenantDataSharingConsent](../resources/resourcetenantdatasharingconsent.md) collection|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|roleManagement|[principalBoundRoleManagement](../resources/principalboundrolemanagement.md)|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|scopedRoleMemberOf|[scopedRoleMembership](../resources/scopedrolemembership.md) collection|The scoped-role administrative unit memberships for this user. Read-only. Nullable. Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|securedDpapiEncryptionKeys|[securedEncryptedData](../resources/securedencrypteddata.md) collection|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|securedExternalData|[securedExternalData](../resources/securedexternaldata.md) collection|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|serviceProvisioningInfo|[serviceInfo](../resources/serviceinfo.md) collection|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|sponsorOf|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|sponsors|[directoryObject](../resources/directoryobject.md) collection|The users and groups responsible for this guest user's privileges in the tenant and keep the guest user's information and access updated. (HTTP Methods: GET, POST, DELETE.). Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|strongAuthenticationDetail|[strongAuthenticationDetail](../resources/strongauthenticationdetail.md)|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|transitiveMemberOf|[directoryObject](../resources/directoryobject.md) collection|The groups, including nested groups and directory roles that a user is a member of. Nullable. Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|transitiveReports|[directoryObject](../resources/directoryobject.md) collection|The transitive reports for a user. Read-only. Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|
|transitiveRoleAssignments|[unifiedRoleAssignment](../resources/unifiedroleassignment.md)|**TODO: Add Description** Inherited from [Microsoft.DirectoryServices.user](../resources/user.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agentUser",
  "baseType": "microsoft.graph.user",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentUser",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "temporaryAccessPass": {
    "@odata.type": "microsoft.graph.temporaryAccessPass"
  },
  "accountEnabled": "Boolean",
  "ageGroup": "String",
  "alternativeSecurityIds": [
    {
      "@odata.type": "microsoft.graph.alternativeSecurityId"
    }
  ],
  "assignedLicenses": [
    {
      "@odata.type": "microsoft.graph.assignedLicense"
    }
  ],
  "assignedPlans": [
    {
      "@odata.type": "microsoft.graph.assignedPlan"
    }
  ],
  "assistantName": "String",
  "assistantTelephone": "String",
  "authorizationInfo": {
    "@odata.type": "microsoft.graph.authorizationInfo"
  },
  "businessPhones": [
    "String"
  ],
  "certificateAuthenticationMethods": [
    {
      "@odata.type": "microsoft.graph.nonSecretCredential"
    }
  ],
  "city": "String",
  "cloudLegacyExchangeDN": "String",
  "cloudMSExchArchiveStatus": "Integer",
  "cloudMSExchBlockedSendersHash": "Binary",
  "cloudMSExchUserHoldPolicies": [
    "String"
  ],
  "cloudMSExchRecipientDisplayType": "Integer",
  "cloudMSExchSafeRecipientsHash": "Binary",
  "cloudMSExchSafeSendersHash": "Binary",
  "cloudMSExchTeamMailboxSharePointUrl": "String",
  "cloudMSExchTeamMailboxExpiration": "String (timestamp)",
  "cloudMSExchUCVoiceMailSettings": [
    "String"
  ],
  "cloudRealtimeCommunicationInfo": {
    "@odata.type": "microsoft.graph.cloudRealtimeCommunicationInfo"
  },
  "companyName": "String",
  "consentProvidedForMinor": "String",
  "country": "String",
  "countryCode": "Integer",
  "createdDateTime": "String (timestamp)",
  "creationType": "String",
  "customSecurityAttributes": {
    "@odata.type": "microsoft.graph.customSecurityAttributeValue"
  },
  "department": "String",
  "description": "String",
  "deviceKeys": [
    {
      "@odata.type": "microsoft.graph.deviceKey"
    }
  ],
  "displayName": "String",
  "eamCredentials": [
    {
      "@odata.type": "microsoft.graph.nonSecretCredential"
    }
  ],
  "employeeHireDate": "String (timestamp)",
  "employeeId": "String",
  "employeeOrgData": {
    "@odata.type": "microsoft.graph.employeeOrgData"
  },
  "employeeType": "String",
  "employeeLeaveDateTime": "String (timestamp)",
  "externalUserInformation": {
    "@odata.type": "microsoft.graph.externalUserInformation"
  },
  "faxNumber": "String",
  "federatedIdentityCredentials": [
    {
      "@odata.type": "microsoft.graph.nonSecretCredential"
    }
  ],
  "givenName": "String",
  "homePhone": "String",
  "identities": [
    {
      "@odata.type": "microsoft.graph.objectIdentity"
    }
  ],
  "imAddresses": [
    "String"
  ],
  "info": "String",
  "infoCatalogs": [
    "String"
  ],
  "initials": "String",
  "isLicenseReconciliationNeeded": "Boolean",
  "isManagementRestricted": "Boolean",
  "isResourceAccount": "Boolean",
  "jobTitle": "String",
  "lastPasswordChangeDateTime": "String (timestamp)",
  "legalAgeGroupClassification": "String",
  "letterCountryCode": "String",
  "lifecycle": {
    "@odata.type": "microsoft.graph.lifecycle"
  },
  "licenseAssignmentStates": [
    {
      "@odata.type": "microsoft.graph.licenseAssignmentState"
    }
  ],
  "mail": "String",
  "mailNickname": "String",
  "mobilePhone": "String",
  "msExchange": {
    "@odata.type": "microsoft.graph.msExchange"
  },
  "netId": "String",
  "onPremisesDistinguishedName": "String",
  "onPremisesExtensionAttributes": {
    "@odata.type": "microsoft.graph.onPremisesExtensionAttributes"
  },
  "onPremisesImmutableId": "String",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesObjectIdentifier": "String",
  "onPremisesProvisioningErrors": [
    {
      "@odata.type": "microsoft.graph.onPremisesProvisioningError"
    }
  ],
  "onPremisesSecurityIdentifier": "String",
  "onPremisesSipInfo": {
    "@odata.type": "microsoft.graph.onPremisesSipInfo"
  },
  "onPremisesSyncEnabled": "Boolean",
  "onPremisesDomainName": "String",
  "onPremisesSamAccountName": "String",
  "onPremisesUserPrincipalName": "String",
  "otherFaxNumbers": [
    "String"
  ],
  "otherHomePhones": [
    "String"
  ],
  "otherMails": [
    "String"
  ],
  "otherTelephones": [
    "String"
  ],
  "pager": "String",
  "passwordPolicies": "String",
  "passwordProfile": {
    "@odata.type": "microsoft.graph.passwordProfile"
  },
  "officeLocation": "String",
  "perUserMfaState": "String",
  "portalSetting": "String",
  "postalCode": "String",
  "postOfficeBoxes": [
    "String"
  ],
  "preferredDataLocation": "String",
  "preferredLanguage": "String",
  "provisionedPlans": [
    {
      "@odata.type": "microsoft.graph.provisionedPlan"
    }
  ],
  "proxyAddresses": [
    "String"
  ],
  "purviewInsiderRiskLevel": "String",
  "qrCodeCredentials": [
    {
      "@odata.type": "microsoft.graph.nonSecretCredential"
    }
  ],
  "qrPinCredential": {
    "@odata.type": "microsoft.graph.secretCredential"
  },
  "qrPinHistory": {
    "@odata.type": "microsoft.graph.encryptedSecret"
  },
  "refreshTokensValidFromDateTime": "String (timestamp)",
  "releaseTrack": "String",
  "securityIdentifier": "String",
  "serviceOriginatedResources": [
    {
      "@odata.type": "microsoft.graph.serviceOriginatedResource"
    }
  ],
  "serviceProvisioningErrors": [
    {
      "@odata.type": "microsoft.graph.serviceProvisioningXmlError"
    }
  ],
  "showInAddressList": "Boolean",
  "signInSessionsValidFromDateTime": "String (timestamp)",
  "state": "String",
  "streetAddress": "String",
  "surname": "String",
  "usageLocation": "String",
  "userCertificate": [
    "Binary"
  ],
  "userSMIMECertificate": [
    "String"
  ],
  "userPrincipalName": "String",
  "externalUserState": "String",
  "externalUserStateChangeDateTime": "String",
  "userType": "String",
  "originTenantInfo": {
    "@odata.type": "microsoft.graph.crossTenantResource"
  },
  "wwwHomepage": "String",
  "identityParentId": "String",
  "agentIdentityBlueprintId": "String"
}
```

