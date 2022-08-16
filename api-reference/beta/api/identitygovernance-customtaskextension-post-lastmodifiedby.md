---
title: "Add user"
description: "Add lastModifiedBy by posting to the lastModifiedBy collection."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Add user

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add lastModifiedBy by posting to the lastModifiedBy collection.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/lifecycleWorkflows/customTaskExtensions/{customTaskExtensionId}/lastModifiedBy/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [user](../resources/user.md) object.

You can specify the following properties when creating a **user**.

|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|The date and time the user was deleted. Inherited from [directoryObject](../resources/directoryobject.md). Optional.|
|signInActivity|[signInActivity](../resources/signinactivity.md)|Provides the last interactive or non-interactive sign-in time for a specific user. Optional.|
|accountEnabled|Boolean|true if the account is enabled; otherwise, false. This property is required when a user is created. Optional.|
|ageGroup|String|Sets the age group of the user.  Optional.|
|assignedLicenses|[assignedLicense](../resources/assignedlicense.md) collection|The licenses that are assigned to the user, including inherited (group-based) licenses. Required.|
|assignedPlans|[assignedPlan](../resources/assignedplan.md) collection|The plans that are assigned to the user. Required.|
|authorizationPolicy|[authorizationPolicy](../resources/authorizationPolicy.md)|A policy that can control Azure Active Directory authorization settings. Optional.|
|businessPhones|String collection|The telephone numbers for the user. Required.|
|city|String|The city in which the user is located. Optional.|
|companyName|String|The company name which the user is associated. Optional.|
|consentProvidedForMinor|String|Sets whether consent has been obtained for minors. Optional.|
|country|String|The country/region in which the user is located. Optional.|
|createdDateTime|DateTimeOffset|The created date of the user object. Optional.|
|creationType|String|Indicates how the user account was created. Optional.|
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|Business-specific attributes that you can define and assign to Azure AD objects. Optional.|
|department|String|The name for the department in which the user works. Optional.|
|device|[device](../resources/device.md) collection|Represents a device registered in the organization. Required.|
|displayName|String|The name displayed in the address book for the user. Optional.|
|employeeHireDate|DateTimeOffset|The date and time when the user was hired or will start work in case of a future hire. Optional.|
|employeeId|String|The employee identifier assigned to the user by the organization. Optional.|
|employeeOrgData|[employeeOrgData](../resources/employeeorgdata.md)|Represents organization data associated with a user. Optional.|
|employeeType|String|Captures enterprise worker type. Optional.|
|faxNumber|String|The fax number of the user. Optional.|
|givenName|String|The given name (first name) of the user. Optional.|
|identities|[objectIdentity](../resources/objectidentity.md) collection|Represents the identities that can be used to sign in to this user account. Optional.|
|imAddresses|String collection|The instant message voice over IP (VOIP) session initiation protocol (SIP) addresses for the user. Optional.|
|infoCatalogs|String collection|Catalogue information associated with the user. Required.|
|isManagementRestricted|Boolean|Determines whether management is restricted for a user. Optional.|
|isResourceAccount|Boolean|Determines if a user account is a resource account. Optional.|
|jobTitle|String|The user's job title Optional.|
|lastPasswordChangeDateTime|DateTimeOffset|The time when this Azure AD user last changed their password or when their password was created, whichever date the latest action was performed. Optional.|
|legalAgeGroupClassification|String|Used by enterprise applications to determine the legal age group of the user.  Optional.|
|licenseAssignmentStates|[licenseAssignmentState](../resources/licenseassignmentstate.md) collection|State of license assignments for this user. Optional.|
|mail|String|The SMTP address for the user. Optional.|
|mailNickname|String|The mail alias for the user. Optional.|
|mobilePhone|String|The primary cellular telephone number for the user. Optional.|
|onPremisesDistinguishedName|String|Contains the on-premises Active Directory distinguished name or DN. Optional.|
|onPremisesExtensionAttributes|[onPremisesExtensionAttributes](../resources/onpremisesextensionattributes.md)|Contains extensionAttributes1-15 for the user. Optional.|
|onPremisesImmutableId|String|This property is used to associate an on-premises Active Directory user account to their Azure AD user object.  Optional.|
|onPremisesLastSyncDateTime|DateTimeOffset|Indicates the last time at which the object was synced with the on-premises directory. Optional.|
|onPremisesProvisioningErrors|[onPremisesProvisioningError](../resources/onpremisesprovisioningerror.md) collection|Errors when using Microsoft synchronization product during provisioning. Optional.|
|onPremisesSecurityIdentifier|String|The on premise security identifier. Optional.|
|onPremisesSyncEnabled|Boolean|The on premise sync enabled. Optional.|
|onPremisesDomainName|String|Contains the on-premises domainFQDN, also called dnsDomainName synchronized from the on-premises directory.  Optional.|
|onPremisesSamAccountName|String|Contains the on-premises samAccountName synchronized from the on-premises directory. Optional.|
|onPremisesUserPrincipalName|String|Contains the on-premises userPrincipalName synchronized from the on-premises directory. Optional.|
|otherMails|String collection|A list of additional email addresses for the user. Required.|
|passwordPolicies|String|Specifies password policies for the user. Optional.|
|passwordProfile|[passwordProfile](../resources/passwordprofile.md)|Specifies the password profile for the user. Optional.|
|officeLocation|String|The office location associated with the user Optional.|
|postalCode|String|The postal code associated with the user. Optional.|
|preferredDataLocation|String|The preferred data location of the user. Optional.|
|preferredLanguage|String|The preferred language of the user. Optional.|
|provisionedPlans|[provisionedPlan](../resources/provisionedplan.md) collection|The plans that are provisioned for the user. Required.|
|proxyAddresses|String collection|The proxy address associated with the user. Required.|
|refreshTokensValidFromDateTime|DateTimeOffset|Any refresh tokens or sessions tokens (session cookies) issued before this time are invalid, and applications will get an error when using an invalid refresh or sessions token to acquire a delegated access token (to access APIs such as Microsoft Graph). Optional.|
|securityIdentifier|String|A security identifier associated with a user. Optional.|
|showInAddressList|Boolean|Defines whether or not a user's address is shown in a list. Optional.|
|signInSessionsValidFromDateTime|DateTimeOffset|A valid sign in session from the user. Optional.|
|state|String|The state associated with the user. Optional.|
|streetAddress|String|The street address of the user's place of business. Optional.|
|surname|String|The user's surname (family name or last name). Optional.|
|usageLocation|String|A two letter country code (ISO standard 3166). Optional.|
|userPrincipalName|String|The user principal name. Optional.|
|externalUserState|String|For an external user invited to the tenant using the invitation API, this property represents the invited user's invitation status. Optional.|
|externalUserStateChangeDateTime|String|Shows the timestamp for the latest change to the externalUserState property. Optional.|
|userType|String|A string value that can be used to classify user types in your directory, such as Member and Guest. Optional.|
|mailboxSettings|[mailboxSettings](../resources/mailboxsettings.md)|Settings for the primary mailbox of the signed-in user. Optional.|
|deviceEnrollmentLimit|Int32|Device enrollment information for a user. Required.|
|print|[Print](../resources/print.md)|Print discovery for users. Optional.|
|aboutMe|String|The users about me section. Optional.|
|birthday|DateTimeOffset|The users birth date. Required.|
|hireDate|DateTimeOffset|The hire date of the user. Required.|
|interests|String collection|The interests associated with the user. Optional.|
|mySite|String|The mysite associated with the user. Optional.|
|pastProjects|String collection|The last projects associated with the user Optional.|
|preferredName|String|The preferred name of the user. Optional.|
|responsibilities|String collection|A list for the user to enumerate their responsibilities. Optional.|
|schools|String collection|A list for the user to enumerate the schools they have attended. Optional.|
|skills|String collection|A list for the user to enumerate their skills. Optional.|

## Response

If successful, this method returns a `204 No Content` response code and a [user](../resources/user.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_user_from_users"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/customTaskExtensions/{customTaskExtensionId}/lastModifiedBy/$ref
Content-Type: application/json
Content-length: 3735

{
  "@odata.type": "#microsoft.graph.user",
  "deletedDateTime": "String (timestamp)",
  "signInActivity": {
    "@odata.type": "microsoft.graph.signInActivity"
  },
  "accountEnabled": "Boolean",
  "ageGroup": "String",
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
  "authorizationPolicy": {
    "@odata.type": "microsoft.graph.authorizationPolicy"
  },
  "businessPhones": [
    "String"
  ],
  "city": "String",
  "companyName": "String",
  "consentProvidedForMinor": "String",
  "country": "String",
  "creationType": "String",
  "customSecurityAttributes": {
    "@odata.type": "microsoft.graph.customSecurityAttributeValue"
  },
  "department": "String",
  "device": [
    {
      "@odata.type": "microsoft.graph.device"
    }
  ],
  "displayName": "String",
  "employeeHireDate": "String (timestamp)",
  "employeeId": "String",
  "employeeOrgData": {
    "@odata.type": "microsoft.graph.employeeOrgData"
  },
  "employeeType": "String",
  "faxNumber": "String",
  "givenName": "String",
  "identities": [
    {
      "@odata.type": "microsoft.graph.objectIdentity"
    }
  ],
  "imAddresses": [
    "String"
  ],
  "infoCatalogs": [
    "String"
  ],
  "isManagementRestricted": "Boolean",
  "isResourceAccount": "Boolean",
  "jobTitle": "String",
  "lastPasswordChangeDateTime": "String (timestamp)",
  "legalAgeGroupClassification": "String",
  "licenseAssignmentStates": [
    {
      "@odata.type": "microsoft.graph.licenseAssignmentState"
    }
  ],
  "mail": "String",
  "mailNickname": "String",
  "mobilePhone": "String",
  "onPremisesDistinguishedName": "String",
  "onPremisesExtensionAttributes": {
    "@odata.type": "microsoft.graph.onPremisesExtensionAttributes"
  },
  "onPremisesImmutableId": "String",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesProvisioningErrors": [
    {
      "@odata.type": "microsoft.graph.onPremisesProvisioningError"
    }
  ],
  "onPremisesSecurityIdentifier": "String",
  "onPremisesSyncEnabled": "Boolean",
  "onPremisesDomainName": "String",
  "onPremisesSamAccountName": "String",
  "onPremisesUserPrincipalName": "String",
  "otherMails": [
    "String"
  ],
  "passwordPolicies": "String",
  "passwordProfile": {
    "@odata.type": "microsoft.graph.passwordProfile"
  },
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
  "externalUserState": "String",
  "externalUserStateChangeDateTime": "String",
  "userType": "String",
  "mailboxSettings": {
    "@odata.type": "microsoft.graph.mailboxSettings"
  },
  "deviceEnrollmentLimit": "Integer",
  "print": {
    "@odata.type": "microsoft.graph.Print"
  },
  "aboutMe": "String",
  "birthday": "String (timestamp)",
  "hireDate": "String (timestamp)",
  "interests": [
    "String"
  ],
  "mySite": "String",
  "pastProjects": [
    "String"
  ],
  "preferredName": "String",
  "responsibilities": [
    "String"
  ],
  "schools": [
    "String"
  ],
  "skills": [
    "String"
  ]
}
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.user"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.user",
  "id": "30b0600b-c780-a372-789f-e1c7c29bb063",
  "deletedDateTime": "String (timestamp)",
  "signInActivity": {
    "@odata.type": "microsoft.graph.signInActivity"
  },
  "accountEnabled": "Boolean",
  "ageGroup": "String",
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
  "authorizationPolicy": {
    "@odata.type": "microsoft.graph.authorizationPolicy"
  },
  "businessPhones": [
    "String"
  ],
  "city": "String",
  "companyName": "String",
  "consentProvidedForMinor": "String",
  "country": "String",
  "createdDateTime": "String (timestamp)",
  "creationType": "String",
  "customSecurityAttributes": {
    "@odata.type": "microsoft.graph.customSecurityAttributeValue"
  },
  "department": "String",
  "device": [
    {
      "@odata.type": "microsoft.graph.device"
    }
  ],
  "displayName": "String",
  "employeeHireDate": "String (timestamp)",
  "employeeId": "String",
  "employeeOrgData": {
    "@odata.type": "microsoft.graph.employeeOrgData"
  },
  "employeeType": "String",
  "faxNumber": "String",
  "givenName": "String",
  "identities": [
    {
      "@odata.type": "microsoft.graph.objectIdentity"
    }
  ],
  "imAddresses": [
    "String"
  ],
  "infoCatalogs": [
    "String"
  ],
  "isManagementRestricted": "Boolean",
  "isResourceAccount": "Boolean",
  "jobTitle": "String",
  "lastPasswordChangeDateTime": "String (timestamp)",
  "legalAgeGroupClassification": "String",
  "licenseAssignmentStates": [
    {
      "@odata.type": "microsoft.graph.licenseAssignmentState"
    }
  ],
  "mail": "String",
  "mailNickname": "String",
  "mobilePhone": "String",
  "onPremisesDistinguishedName": "String",
  "onPremisesExtensionAttributes": {
    "@odata.type": "microsoft.graph.onPremisesExtensionAttributes"
  },
  "onPremisesImmutableId": "String",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesProvisioningErrors": [
    {
      "@odata.type": "microsoft.graph.onPremisesProvisioningError"
    }
  ],
  "onPremisesSecurityIdentifier": "String",
  "onPremisesSyncEnabled": "Boolean",
  "onPremisesDomainName": "String",
  "onPremisesSamAccountName": "String",
  "onPremisesUserPrincipalName": "String",
  "otherMails": [
    "String"
  ],
  "passwordPolicies": "String",
  "passwordProfile": {
    "@odata.type": "microsoft.graph.passwordProfile"
  },
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
  "externalUserState": "String",
  "externalUserStateChangeDateTime": "String",
  "userType": "String",
  "mailboxSettings": {
    "@odata.type": "microsoft.graph.mailboxSettings"
  },
  "deviceEnrollmentLimit": "Integer",
  "print": {
    "@odata.type": "microsoft.graph.Print"
  },
  "aboutMe": "String",
  "birthday": "String (timestamp)",
  "hireDate": "String (timestamp)",
  "interests": [
    "String"
  ],
  "mySite": "String",
  "pastProjects": [
    "String"
  ],
  "preferredName": "String",
  "responsibilities": [
    "String"
  ],
  "schools": [
    "String"
  ],
  "skills": [
    "String"
  ]
}
```
