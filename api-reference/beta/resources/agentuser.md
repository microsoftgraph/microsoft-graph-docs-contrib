---
title: "agentUser resource type"
description: "Represents a specialized subtype of user identity in Microsoft Entra ID designed for AI-powered applications (agents) that need to function as digital workers."
author: "yyuank"
ms.reviewer: "iamut"
ms.date: 11/17/2025
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: resourcePageType
---

# agentUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specialized subtype of user identity in Microsoft Entra ID designed for AI-powered applications (agents) that need to function as digital workers. Agent users enable agents to access APIs and services that specifically require user identities, receiving tokens with `idtyp=user` claims. Agent users are distinct from human [users](../resources/user.md) and they only interlinked to users through relationships such as owner, sponsor, and manager.

Each agent user maintains a one-to-one relationship with a parent agent identity and is authenticated through that parent's credentials. Agent users have user-like capabilities such as being added to groups, assigned licenses, and accessing collaborative features like mailboxes and chat, while operating under security constraints including no password authentication, no privileged admin role assignments, and permissions similar to guest users.

Inherits from [user](../resources/user.md).

This resource is an open type that allows additional properties beyond those documented here.

## Methods

| Method | Return Type | Description |
|:------ |:----------- |:----------- |
| [List](../api/agentuser-list.md) | [agentUser](agentuser.md) collection | Get a list of **agentUser** objects. |
| [Create](../api/agentuser-post.md) | [agentUser](agentuser.md) | Create a new **agentUser** object. |
| [Get](../api/agentuser-get.md) | [agentUser](agentuser.md) | Read properties and relationships of **agentUser** object. |
| [Update](../api/agentuser-update.md) | [agentUser](agentuser.md) | Update **agentUser** object. |
| [Delete](../api/agentuser-delete.md) | None | Delete **agentUser** object. |
| **App role assignments** | | |
| [List app role assignments](../api/agentuser-list-approleassignments.md) | [appRoleAssignment](../resources/approleassignment.md) collection | Get the app role assignments for this agent user. |
| [Create app role assignment](../api/agentuser-post-approleassignments.md) | [appRoleAssignment](../resources/approleassignment.md) | Create a new app role assignment for this agent user. |
|**Deleted items**|||
|[List](../api/directory-deleteditems-list.md) | [directoryObject](directoryobject.md) collection | Retrieve a list of recently deleted agent user objects. |
|[Get](../api/directory-deleteditems-get.md) | [directoryObject](directoryobject.md) | Retrieve the properties of a recently deleted agent user. |
|[Restore](../api/directory-deleteditems-restore.md) | [directoryObject](directoryobject.md) | Restore a recently deleted agent user. |
|[Permanently delete](../api/directory-deleteditems-delete.md) | None | Permanently delete an agent user. |
| **Directory objects** | | |
| [List owned objects](../api/agentuser-list-ownedobjects.md) | [directoryObject](../resources/directoryobject.md) collection | Get the directory objects owned by the agent user. |
| **Organizational relationships** | | |
| [List direct reports](../api/agentuser-list-directreports.md) | [directoryObject](../resources/directoryobject.md) collection | Get the users and contacts that report to the agent user. |
| [List manager](../api/agentuser-list-manager.md) | [directoryObject](../resources/directoryobject.md) | Get the user or contact that is this agent user's manager. |
| [Add manager](../api/agentuser-post-manager.md) | None | Assign the agent user's manager. |
| [Remove manager](../api/agentuser-delete-manager.md) | None | Remove the agent user's manager. |
| [List direct memberships](../api/agentuser-list-memberof.md) | [directoryObject](../resources/directoryobject.md) collection | Get the groups, directory roles, and administrative units that the agent user is a member of. |
| [List transitive memberships](../api/agentuser-list-transitivememberof.md) | [directoryObject](../resources/directoryobject.md) collection | Get the groups, directory roles, and administrative units that the agent user is a member of, including nested group memberships. |
| [List transitive reports](../api/agentuser-list-transitivereports.md) | [directoryObject](../resources/directoryobject.md) collection | Get the transitive reports for the agent user. |
| **Sponsors** | | |
| [List sponsors](../api/agentuser-list-sponsors.md) | [directoryObject](../resources/directoryobject.md) collection | Get the users and groups responsible for this agent user's privileges. |
| [Add sponsors](../api/agentuser-post-sponsors.md) | None | Add sponsors for the agent user. |
| [Remove sponsors](../api/agentuser-delete-sponsors.md) | None | Remove sponsors from the agent user. |

## Properties

> [!IMPORTANT]
> While this resource inherits from **user**, some properties are not applicable and return `null` or default values. These properties are excluded from the table below.

|Property|Type|Description|
|:---|:---|:---|
|accountEnabled|Boolean|`true` if the account is enabled; otherwise, `false`. This property is required when creating the object. Inherited from [user](../resources/user.md).|
|assignedLicenses|[assignedLicense](../resources/assignedlicense.md) collection|The licenses that are assigned to the agent user, including inherited (group-based) licenses. This property doesn't differentiate between directly assigned and inherited licenses. Use the **licenseAssignmentStates** property to identify the directly assigned and inherited licenses. Not nullable. Inherited from [user](../resources/user.md).|
|assignedPlans|[assignedPlan](../resources/assignedplan.md) collection|The plans that are assigned to the agent user. Read-only. Not nullable. Inherited from [user](../resources/user.md).|
|businessPhones|String collection|The telephone numbers for the agent user. Only one number can be set for this property. Read-only for users synced from on-premises directory. Inherited from [user](../resources/user.md).|
|city|String|The city where the agent user is located. Maximum length is 128 characters. Inherited from [user](../resources/user.md).|
|cloudRealtimeCommunicationInfo|[cloudRealtimeCommunicationInfo](../resources/cloudrealtimecommunicationinfo.md)|Microsoft realtime communication information related to the agent user. Inherited from [user](../resources/user.md).|
|companyName|String|The name of the company the agent user is associated with. This property can be useful for describing the company that an external user comes from. The maximum length is 64 characters. Inherited from [user](../resources/user.md).|
|country|String|The country or region where the agent user is located; for example, `US` or `UK`. Maximum length is 128 characters. Inherited from [user](../resources/user.md).|
|createdDateTime|DateTimeOffset|The date and time the agent user was created in ISO 8601 format and UTC. The value cannot be modified and is automatically populated when the entity is created. Nullable. For on-premises users, the value represents when they were first created in Microsoft Entra ID. Property is `null` for some users created before June 2018 and on-premises users synced to Microsoft Entra ID before June 2018. Read-only. Inherited from [user](../resources/user.md).|
|creationType|String| Read-only. Null. Inherited from [user](../resources/user.md).|
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|An open complex type that holds the value of a custom security attribute that is assigned to a directory object. Nullable. Inherited from [user](../resources/user.md).|
|deletedDateTime|DateTimeOffset|The date and time the user was deleted. Inherited from [directoryObject](../resources/directoryobject.md).|
|department|String|The name of the department where the user works. Maximum length is 64 characters. Inherited from [user](../resources/user.md).|
|displayName|String|The name displayed in the address book for the user. This value is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created, and it cannot be cleared during updates. Maximum length is 256 characters. Inherited from [user](../resources/user.md).|
|employeeHireDate|DateTimeOffset|The date and time when the user was hired or will start work if there is a future hire. Inherited from [user](../resources/user.md).|
|employeeId|String|The employee identifier assigned to the user by the organization. The maximum length is 16 characters. Inherited from [user](../resources/user.md).|
|employeeLeaveDateTime|DateTimeOffset|The date and time when the user left or will leave the organization. To read this property, the calling app must be assigned the *User-LifeCycleInfo.Read.All* permission. To write this property, the calling app must be assigned the *User.Read.All* and *User-LifeCycleInfo.ReadWrite.All* permissions. To read this property in delegated scenarios, the admin needs at least one of the following Microsoft Entra roles: *Lifecycle Workflows Administrator* (least privilege), *Global Reader*. To write this property in delegated scenarios, the admin needs the *Global Administrator* role. For more information, see [Configure the employeeLeaveDateTime property for a user](/graph/tutorial-lifecycle-workflows-set-employeeleavedatetime). Inherited from [user](../resources/user.md).|
|employeeOrgData|[employeeOrgData](../resources/employeeorgdata.md)|Represents organization data (for example, division and costCenter) associated with a user. Inherited from [user](../resources/user.md).|
|employeeType|String|Captures enterprise worker type. For example, `Employee`, `Contractor`, `Consultant`, or `Vendor`. Inherited from [user](../resources/user.md).|
|faxNumber|String|The fax number of the user. Inherited from [user](../resources/user.md).|
|givenName|String|The given name (first name) of the user. Maximum length is 64 characters. Inherited from [user](../resources/user.md).|
|id|String|The unique identifier for the user. It should be treated as an opaque identifier. Inherited from [directoryObject](../resources/directoryobject.md). Not nullable. Read-only. Inherits from [entity](../resources/entity.md)|
|identityParentId|String|References the object ID of the associated [agent identity](../resources/agentidentity.md). This property is required when creating the object, and it can't be cleared during updates. Inherited from [user](../resources/user.md).|
|imAddresses|String collection|The instant message voice-over IP (VOIP) session initiation protocol (SIP) addresses for the user. Read-only. Inherited from [user](../resources/user.md).|
|infoCatalogs|String collection|Identifies the info segments assigned to the user. Inherited from [user](../resources/user.md).|
|isLicenseReconciliationNeeded|Boolean|Indicates whether the user is pending an exchange mailbox license assignment. Read-only. Inherited from [user](../resources/user.md).|
|isManagementRestricted|Boolean|`true` if the user is a member of a restricted management administrative unit. If not set, the default value is `null` and the default behavior is false. Read-only. To manage a user who is a member of a restricted management administrative unit, the administrator or calling app must be assigned a Microsoft Entra role at the scope of the restricted management administrative unit. Inherited from [user](../resources/user.md).|
|isResourceAccount|Boolean|Do not use – reserved for future use. Inherited from [user](../resources/user.md).|
|jobTitle|String|The user's job title. Maximum length is 128 characters. Inherited from [user](../resources/user.md).|
|licenseAssignmentStates|[licenseAssignmentState](../resources/licenseassignmentstate.md) collection|State of license assignments for this user. It also indicates licenses that are directly assigned and the ones the user inherited through group memberships. Read-only. Inherited from [user](../resources/user.md).|
|mail|String|The SMTP address for the user, for example, `admin@contoso.com`. Changes to this property also update the user's **proxyAddresses** collection to include the value as an SMTP address. This property can't contain accent characters. NOTE: We don't recommend updating this property for Azure AD B2C user profiles. Use the **otherMails** property instead. Inherited from [user](../resources/user.md).|
|mailNickname|String|The mail alias for the user. This property must be specified when a user is created. Maximum length is 64 characters. Inherited from [user](../resources/user.md).|
|mobilePhone|String|The primary cellular telephone number for the user. Read-only for users synced from the on-premises directory. Inherited from [user](../resources/user.md).|
|officeLocation|String|The office location in the user's place of business. Maximum length is 128 characters. Inherited from [user](../resources/user.md).|
|otherMails|String collection|A list of additional email addresses for the user; for example: `["bob@contoso.com", "Robert@fabrikam.com"]`. Can store up to 250 values, each with a limit of 250 characters. NOTE: This property can't contain accent characters. Inherited from [user](../resources/user.md).|
|postalCode|String|The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code. Maximum length is 40 characters. Inherited from [user](../resources/user.md).|
|preferredDataLocation|String|The preferred data location for the user. For more information, see [OneDrive Online Multi-Geo](/sharepoint/dev/solution-guidance/multigeo-introduction). Inherited from [user](../resources/user.md).|
|preferredLanguage|String|The preferred language for the user. The preferred language format is based on RFC 4646. The name combines an ISO 639 two-letter lowercase culture code associated with the language and an ISO 3166 two-letter uppercase subculture code associated with the country or region. Example: "en-US", or "es-ES". Inherited from [user](../resources/user.md).|
|provisionedPlans|[provisionedPlan](../resources/provisionedplan.md) collection|The plans that are provisioned for the user. Read-only. Not nullable. Inherited from [user](../resources/user.md).|
|proxyAddresses|String collection|For example: `["SMTP: bob@contoso.com", "smtp: bob@sales.contoso.com"]`. Changes to the **mail** property also update this collection to include the value as an SMTP address. For more information, see [mail and proxyAddresses properties](user.md#mail-and-proxyaddresses-properties). The proxy address prefixed with `SMTP` (capitalized) is the primary proxy address, while the ones prefixed with `smtp` are the secondary proxy addresses. For Azure AD B2C accounts, this property has a limit of 10 unique addresses. Read-only in Microsoft Graph; you can update this property only through the [Microsoft 365 admin center](/exchange/recipients-in-exchange-online/manage-user-mailboxes/add-or-remove-email-addresses). Not nullable. Inherited from [user](../resources/user.md).|
|refreshTokensValidFromDateTime|DateTimeOffset|Any refresh tokens or sessions tokens (session cookies) issued before this time are invalid, and applications get an error when using an invalid refresh or sessions token to acquire a delegated access token (to access APIs such as Microsoft Graph). If it happens, the application must acquire a new refresh token by requesting the authorized endpoint. Read-only. Use [invalidateAllRefreshTokens](../api/user-invalidateallrefreshtokens.md) to reset. Inherited from [user](../resources/user.md).|
|securityIdentifier|String|Security identifier (SID) of the user, used in Windows scenarios. Read-only. Returned by default. Inherited from [user](../resources/user.md).|
|showInAddressList|Boolean|**Do not use in Microsoft Graph. Manage this property through the Microsoft 365 admin center instead.** Represents whether the agent user should be included in the Outlook global address list. See [Known issue](https://developer.microsoft.com/en-us/graph/known-issues/?search=14972). Inherited from [user](../resources/user.md).|
|signInSessionsValidFromDateTime|DateTimeOffset|Any refresh tokens or sessions tokens (session cookies) issued before this time are invalid, and applications get an error when using an invalid refresh or sessions token to acquire a delegated access token (to access APIs such as Microsoft Graph). If this happens, the application must acquire a new refresh token by requesting the authorized endpoint. Read-only. Use [revokeSignInSessions](../api/user-revokesigninsessions.md) to reset. Inherited from [user](../resources/user.md).|
|state|String|The state or province in the agent user's address. Maximum length is 128 characters. Inherited from [user](../resources/user.md).|
|streetAddress|String|The street address of the agent user's place of business. Maximum length is 1024 characters. Inherited from [user](../resources/user.md).|
|surname|String|The user's surname (family name or last name). Maximum length is 64 characters. Inherited from [user](../resources/user.md).|
|usageLocation|String|A two-letter country code (ISO standard 3166). Required for agent users that are assigned licenses due to legal requirements to check for availability of services in countries. Examples include: `US`, `JP`, and `GB`. Not nullable. Inherited from [user](../resources/user.md).|
|userPrincipalName|String|The user principal name (UPN) of the agent user. The UPN is an Internet-style sign-in name for the user based on the Internet standard RFC 822. By convention, this should map to the agent user's email name. The general format is alias@domain, where the domain must be present in the tenant's verified domain collection. This property is required when a user is created. The verified domains for the tenant can be accessed from the **verifiedDomains** property of [organization](organization.md). NOTE: This property can't contain accent characters. Only the following characters are allowed `A - Z`, `a - z`, `0 - 9`, `' . - _ ! # ^ ~`. For the complete list of allowed characters, see [username policies](/azure/active-directory/authentication/concept-sspr-policy#userprincipalname-policies-that-apply-to-all-user-accounts). Inherited from [user](../resources/user.md).|
|userType|String|A String value that can be used to classify agent user types in your directory. The possible values are `Member` and `Guest`. **NOTE:** For more information about the permissions for member and guest users, see [What are the default user permissions in Microsoft Entra ID?](/azure/active-directory/fundamentals/users-default-permissions?context=graph/context#member-and-guest-users) Inherited from [user](../resources/user.md).|

## Relationships

> [!IMPORTANT]
> While this resource type inherits all relationships from the **user** resource type, some relationships are not applicable to agent users and will always return `null` or default values. These relationships are excluded from the table below for clarity.

|Relationship|Type|Description|
|:---|:---|:---|
|appRoleAssignments|[appRoleAssignment](../resources/approleassignment.md) collection|Represents the app roles an agent user has been granted for an application. Inherited from [user](../resources/user.md)|
|directReports|[directoryObject](../resources/directoryobject.md) collection|The users and contacts that report to the agent user. (The users and contacts with their manager property set to this user.) Read-only. Nullable. Inherited from [user](../resources/user.md)|
|manager|[directoryObject](../resources/directoryobject.md)|The user or contact that is this agent user's manager. Read-only. Inherited from [user](../resources/user.md)|
|memberOf|[directoryObject](../resources/directoryobject.md) collection|The groups, directory roles, and administrative units that the agent user is a member of. Read-only. Nullable. Inherited from [user](../resources/user.md)|
|ownedObjects|[directoryObject](../resources/directoryobject.md) collection|Directory objects owned by the agent user. Read-only. Nullable. Inherited from [user](../resources/user.md)|
|sponsors|[directoryObject](../resources/directoryobject.md) collection|The [users](../resources/user.md) and [groups](../resources/group.md) responsible for this agent user's privileges in the tenant and keep the agent user's information and access updated. (HTTP Methods: GET, POST, DELETE.). Inherited from [user](../resources/user.md)|
|transitiveMemberOf|[directoryObject](../resources/directoryobject.md) collection|The groups, including nested groups and directory roles that the agent user is a member of. Nullable. Inherited from [user](../resources/user.md)|
|transitiveReports|[directoryObject](../resources/directoryobject.md) collection|The transitive reports for an agent user. Read-only. Inherited from [user](../resources/user.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agentUser",
  "baseType": "microsoft.graph.user",
  "openType": true,
  "optionalProperties": [
    "ageGroup",
    "authorizationInfo",
    "consentProvidedForMinor",
    "externalUserState",
    "externalUserStateChangeDateTime",
    "identities",
    "lastPasswordChangeDateTime",
    "legalAgeGroupClassification",
    "onPremisesDistinguishedName",
    "onPremisesDomainName",
    "onPremisesExtensionAttributes",
    "onPremisesImmutableId",
    "onPremisesLastSyncDateTime",
    "onPremisesProvisioningErrors",
    "onPremisesSecurityIdentifier",
    "onPremisesSipInfo",
    "passwordPolicies",
    "passwordProfile",
    "serviceProvisioningErrors"
  ],
  "optionalRelationships": [
    "createdObjects",
    "scopedRoleMemberOf",
    "ownedDevices",
    "registeredDevices"
  ]
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentUser",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "accountEnabled": "Boolean",
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
  "businessPhones": [
    "String"
  ],
  "city": "String",
  "cloudRealtimeCommunicationInfo": {
    "@odata.type": "microsoft.graph.cloudRealtimeCommunicationInfo"
  },
  "companyName": "String",
  "country": "String",
  "countryCode": "Integer",
  "createdDateTime": "String (timestamp)",
  "creationType": "String",
  "customSecurityAttributes": {
    "@odata.type": "microsoft.graph.customSecurityAttributeValue"
  },
  "department": "String",
  "displayName": "String",
  "employeeHireDate": "String (timestamp)",
  "employeeId": "String",
  "employeeOrgData": {
    "@odata.type": "microsoft.graph.employeeOrgData"
  },
  "employeeType": "String",
  "employeeLeaveDateTime": "String (timestamp)",
  "faxNumber": "String",
  "givenName": "String",
  "imAddresses": [
    "String"
  ],
  "infoCatalogs": [
    "String"
  ],
  "isLicenseReconciliationNeeded": "Boolean",
  "isManagementRestricted": "Boolean",
  "isResourceAccount": "Boolean",
  "jobTitle": "String",
  "licenseAssignmentStates": [
    {
      "@odata.type": "microsoft.graph.licenseAssignmentState"
    }
  ],
  "mail": "String",
  "mailNickname": "String",
  "mobilePhone": "String",
  "otherMails": [
    "String"
  ],
  "officeLocation": "String",
  "postalCode": "String",
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
  "refreshTokensValidFromDateTime": "String (timestamp)",
  "securityIdentifier": "String",
  "showInAddressList": "Boolean",
  "signInSessionsValidFromDateTime": "String (timestamp)",
  "state": "String",
  "streetAddress": "String",
  "surname": "String",
  "usageLocation": "String",
  "userPrincipalName": "String",
  "userType": "String",
  "identityParentId": "String"
}
```

