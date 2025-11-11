---
title: "Update agentUser"
description: "Update the properties of an agentUser object."
author: "yyuank"
ms.reviewer: "iamut"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: apiPageType
---

# Update agentUser

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [agentUser](../resources/agentuser.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentuser-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentuser-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /riskyAgentUser/agentUser
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md). Optional.|
|signInActivity|[signInActivity](../resources/signinactivity.md)|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|cloudLicensing|[userCloudLicensing](../resources/cloudlicensing-usercloudlicensing.md)|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|accountEnabled|Boolean|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|ageGroup|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|assignedLicenses|[assignedLicense](../resources/assignedlicense.md) collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Required.|
|assignedPlans|[assignedPlan](../resources/assignedplan.md) collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Required.|
|authorizationInfo|[authorizationInfo](../resources/authorizationinfo.md)|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|businessPhones|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Required.|
|city|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|cloudRealtimeCommunicationInfo|[cloudRealtimeCommunicationInfo](../resources/cloudrealtimecommunicationinfo.md)|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|companyName|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|consentProvidedForMinor|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|country|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|creationType|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|customSecurityAttributes|[customSecurityAttributeValue](../resources/customsecurityattributevalue.md)|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|department|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|deviceKeys|[deviceKey](../resources/devicekey.md) collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Required.|
|displayName|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|employeeHireDate|DateTimeOffset|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|employeeId|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|employeeOrgData|[employeeOrgData](../resources/employeeorgdata.md)|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|employeeType|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|employeeLeaveDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|faxNumber|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|givenName|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|identities|[objectIdentity](../resources/objectidentity.md) collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|imAddresses|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|infoCatalogs|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Required.|
|isLicenseReconciliationNeeded|Boolean|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|isManagementRestricted|Boolean|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|isResourceAccount|Boolean|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|jobTitle|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|lastPasswordChangeDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|legalAgeGroupClassification|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|licenseAssignmentStates|[licenseAssignmentState](../resources/licenseassignmentstate.md) collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|mail|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|mailNickname|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|mobilePhone|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|onPremisesDistinguishedName|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|onPremisesExtensionAttributes|[onPremisesExtensionAttributes](../resources/onpremisesextensionattributes.md)|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|onPremisesImmutableId|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|onPremisesLastSyncDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|onPremisesProvisioningErrors|[onPremisesProvisioningError](../resources/onpremisesprovisioningerror.md) collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|onPremisesSecurityIdentifier|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|onPremisesSipInfo|[onPremisesSipInfo](../resources/onpremisessipinfo.md)|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|onPremisesSyncEnabled|Boolean|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|onPremisesDomainName|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|onPremisesSamAccountName|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|onPremisesUserPrincipalName|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|otherMails|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Required.|
|passwordPolicies|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|passwordProfile|[passwordProfile](../resources/passwordprofile.md)|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|officeLocation|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|postalCode|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|preferredDataLocation|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|preferredLanguage|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|provisionedPlans|[provisionedPlan](../resources/provisionedplan.md) collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Required.|
|proxyAddresses|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Required.|
|refreshTokensValidFromDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|securityIdentifier|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|serviceProvisioningErrors|[serviceProvisioningError](../resources/serviceprovisioningerror.md) collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|showInAddressList|Boolean|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|signInSessionsValidFromDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|state|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|streetAddress|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|surname|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|usageLocation|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|userPrincipalName|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|externalUserState|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|externalUserStateChangeDateTime|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|userType|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|identityParentId|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|mailboxSettings|[mailboxSettings](../resources/mailboxsettings.md)|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|deviceEnrollmentLimit|Int32|**TODO: Add Description** Inherited from [user](../resources/user.md). Required.|
|print|[userPrint](../resources/intune-userprint.md)|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|aboutMe|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|birthday|DateTimeOffset|**TODO: Add Description** Inherited from [user](../resources/user.md). Required.|
|hireDate|DateTimeOffset|**TODO: Add Description** Inherited from [user](../resources/user.md). Required.|
|interests|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|mySite|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|pastProjects|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|preferredName|String|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|responsibilities|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|schools|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|
|skills|String collection|**TODO: Add Description** Inherited from [user](../resources/user.md). Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [agentUser](../resources/agentuser.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_agentuser"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/riskyAgentUser/agentUser
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.agentUser",
  "deletedDateTime": "String (timestamp)",
  "signInActivity": {
    "@odata.type": "microsoft.graph.signInActivity"
  },
  "cloudLicensing": {
    "@odata.type": "microsoft.graph.cloudLicensing.userCloudLicensing"
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
  "identityParentId": "String",
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.agentUser",
  "id": "929393ae-1e1d-159f-0d83-29f7df42e7b9",
  "deletedDateTime": "String (timestamp)",
  "signInActivity": {
    "@odata.type": "microsoft.graph.signInActivity"
  },
  "cloudLicensing": {
    "@odata.type": "microsoft.graph.cloudLicensing.userCloudLicensing"
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
  "identityParentId": "String",
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

