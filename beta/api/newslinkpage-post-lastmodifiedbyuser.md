---
title: "Add user"
description: "Add lastModifiedByUser by posting to the lastModifiedByUser collection."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Add user

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add lastModifiedByUser by posting to the lastModifiedByUser collection.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "newslinkpage-post-lastmodifiedbyuser-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/newslinkpage-post-lastmodifiedbyuser-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /newsLinkPage/lastModifiedByUser/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [user](../resources/user.md) object.

You can specify the following properties when creating a **user**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md). Optional.|
|signInActivity|[signInActivity](../resources/signinactivity.md)|**TODO: Add Description** Optional.|
|accountEnabled|Boolean|**TODO: Add Description** Optional.|
|ageGroup|String|**TODO: Add Description** Optional.|
|assignedLicenses|[assignedLicense](../resources/assignedlicense.md) collection|**TODO: Add Description** Required.|
|assignedPlans|[assignedPlan](../resources/assignedplan.md) collection|**TODO: Add Description** Required.|
|authorizationInfo|[authorizationInfo](../resources/authorizationinfo.md)|**TODO: Add Description** Optional.|
|businessPhones|String collection|**TODO: Add Description** Required.|
|city|String|**TODO: Add Description** Optional.|
|cloudRealtimeCommunicationInfo|[cloudRealtimeCommunicationInfo](../resources/cloudrealtimecommunicationinfo.md)|**TODO: Add Description** Optional.|
|companyName|String|**TODO: Add Description** Optional.|
|consentProvidedForMinor|String|**TODO: Add Description** Optional.|
|country|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|creationType|String|**TODO: Add Description** Optional.|
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|**TODO: Add Description** Optional.|
|department|String|**TODO: Add Description** Optional.|
|deviceKeys|[deviceKey](../resources/devicekey.md) collection|**TODO: Add Description** Required.|
|displayName|String|**TODO: Add Description** Optional.|
|employeeHireDate|DateTimeOffset|**TODO: Add Description** Optional.|
|employeeId|String|**TODO: Add Description** Optional.|
|employeeOrgData|[employeeOrgData](../resources/employeeorgdata.md)|**TODO: Add Description** Optional.|
|employeeType|String|**TODO: Add Description** Optional.|
|employeeLeaveDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|faxNumber|String|**TODO: Add Description** Optional.|
|givenName|String|**TODO: Add Description** Optional.|
|identities|[objectIdentity](../resources/objectidentity.md) collection|**TODO: Add Description** Optional.|
|imAddresses|String collection|**TODO: Add Description** Optional.|
|infoCatalogs|String collection|**TODO: Add Description** Required.|
|isLicenseReconciliationNeeded|Boolean|**TODO: Add Description** Optional.|
|isManagementRestricted|Boolean|**TODO: Add Description** Optional.|
|isResourceAccount|Boolean|**TODO: Add Description** Optional.|
|jobTitle|String|**TODO: Add Description** Optional.|
|lastPasswordChangeDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|legalAgeGroupClassification|String|**TODO: Add Description** Optional.|
|licenseAssignmentStates|[licenseAssignmentState](../resources/licenseassignmentstate.md) collection|**TODO: Add Description** Optional.|
|mail|String|**TODO: Add Description** Optional.|
|mailNickname|String|**TODO: Add Description** Optional.|
|mobilePhone|String|**TODO: Add Description** Optional.|
|onPremisesDistinguishedName|String|**TODO: Add Description** Optional.|
|onPremisesExtensionAttributes|[onPremisesExtensionAttributes](../resources/onpremisesextensionattributes.md)|**TODO: Add Description** Optional.|
|onPremisesImmutableId|String|**TODO: Add Description** Optional.|
|onPremisesLastSyncDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|onPremisesProvisioningErrors|[onPremisesProvisioningError](../resources/onpremisesprovisioningerror.md) collection|**TODO: Add Description** Optional.|
|onPremisesSecurityIdentifier|String|**TODO: Add Description** Optional.|
|onPremisesSipInfo|[onPremisesSipInfo](../resources/onpremisessipinfo.md)|**TODO: Add Description** Optional.|
|onPremisesSyncEnabled|Boolean|**TODO: Add Description** Optional.|
|onPremisesDomainName|String|**TODO: Add Description** Optional.|
|onPremisesSamAccountName|String|**TODO: Add Description** Optional.|
|onPremisesUserPrincipalName|String|**TODO: Add Description** Optional.|
|otherMails|String collection|**TODO: Add Description** Required.|
|passwordPolicies|String|**TODO: Add Description** Optional.|
|passwordProfile|[passwordProfile](../resources/passwordprofile.md)|**TODO: Add Description** Optional.|
|officeLocation|String|**TODO: Add Description** Optional.|
|postalCode|String|**TODO: Add Description** Optional.|
|preferredDataLocation|String|**TODO: Add Description** Optional.|
|preferredLanguage|String|**TODO: Add Description** Optional.|
|provisionedPlans|[provisionedPlan](../resources/provisionedplan.md) collection|**TODO: Add Description** Required.|
|proxyAddresses|String collection|**TODO: Add Description** Required.|
|refreshTokensValidFromDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|securityIdentifier|String|**TODO: Add Description** Optional.|
|serviceProvisioningErrors|[serviceProvisioningError](../resources/serviceprovisioningerror.md) collection|**TODO: Add Description** Optional.|
|showInAddressList|Boolean|**TODO: Add Description** Optional.|
|signInSessionsValidFromDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|state|String|**TODO: Add Description** Optional.|
|streetAddress|String|**TODO: Add Description** Optional.|
|surname|String|**TODO: Add Description** Optional.|
|usageLocation|String|**TODO: Add Description** Optional.|
|userPrincipalName|String|**TODO: Add Description** Optional.|
|externalUserState|String|**TODO: Add Description** Optional.|
|externalUserStateChangeDateTime|String|**TODO: Add Description** Optional.|
|userType|String|**TODO: Add Description** Optional.|
|mailboxSettings|[mailboxSettings](../resources/mailboxsettings.md)|**TODO: Add Description** Optional.|
|deviceEnrollmentLimit|Int32|**TODO: Add Description** Required.|
|print|[userPrint](../resources/intune-userprint.md)|**TODO: Add Description** Optional.|
|aboutMe|String|**TODO: Add Description** Optional.|
|birthday|DateTimeOffset|**TODO: Add Description** Required.|
|hireDate|DateTimeOffset|**TODO: Add Description** Required.|
|interests|String collection|**TODO: Add Description** Optional.|
|mySite|String|**TODO: Add Description** Optional.|
|pastProjects|String collection|**TODO: Add Description** Optional.|
|preferredName|String|**TODO: Add Description** Optional.|
|responsibilities|String collection|**TODO: Add Description** Optional.|
|schools|String collection|**TODO: Add Description** Optional.|
|skills|String collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `204 No Content` response code and a [user](../resources/user.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_user_from_users"
}
-->
``` http
POST https://graph.microsoft.com/beta/newsLinkPage/lastModifiedByUser/$ref
Content-Type: application/json

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
  "authorizationInfo": {
    "@odata.type": "microsoft.graph.authorizationInfo"
  },
  "businessPhones": [
    "String"
  ],
  "city": "String",
  "cloudRealtimeCommunicationInfo": {
    "@odata.type": "microsoft.graph.cloudRealtimeCommunicationInfo"
  },
  "companyName": "String",
  "consentProvidedForMinor": "String",
  "country": "String",
  "creationType": "String",
  "customSecurityAttributes": {
    "@odata.type": "microsoft.graph.customSecurityAttributeValue"
  },
  "department": "String",
  "deviceKeys": [
    {
      "@odata.type": "microsoft.graph.deviceKey"
    }
  ],
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
  "isLicenseReconciliationNeeded": "Boolean",
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
  "onPremisesSipInfo": {
    "@odata.type": "microsoft.graph.onPremisesSipInfo"
  },
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
  "userPrincipalName": "String",
  "externalUserState": "String",
  "externalUserStateChangeDateTime": "String",
  "userType": "String",
  "mailboxSettings": {
    "@odata.type": "microsoft.graph.mailboxSettings"
  },
  "deviceEnrollmentLimit": "Integer",
  "print": {
    "@odata.type": "microsoft.graph.userPrint"
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

The following example shows the response.
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
  "authorizationInfo": {
    "@odata.type": "microsoft.graph.authorizationInfo"
  },
  "businessPhones": [
    "String"
  ],
  "city": "String",
  "cloudRealtimeCommunicationInfo": {
    "@odata.type": "microsoft.graph.cloudRealtimeCommunicationInfo"
  },
  "companyName": "String",
  "consentProvidedForMinor": "String",
  "country": "String",
  "createdDateTime": "String (timestamp)",
  "creationType": "String",
  "customSecurityAttributes": {
    "@odata.type": "microsoft.graph.customSecurityAttributeValue"
  },
  "department": "String",
  "deviceKeys": [
    {
      "@odata.type": "microsoft.graph.deviceKey"
    }
  ],
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
  "isLicenseReconciliationNeeded": "Boolean",
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
  "onPremisesSipInfo": {
    "@odata.type": "microsoft.graph.onPremisesSipInfo"
  },
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
  "userPrincipalName": "String",
  "externalUserState": "String",
  "externalUserStateChangeDateTime": "String",
  "userType": "String",
  "mailboxSettings": {
    "@odata.type": "microsoft.graph.mailboxSettings"
  },
  "deviceEnrollmentLimit": "Integer",
  "print": {
    "@odata.type": "microsoft.graph.userPrint"
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

