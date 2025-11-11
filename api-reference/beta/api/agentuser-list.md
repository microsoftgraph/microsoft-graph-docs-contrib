---
title: "List agentUser objects"
description: "Get a list of the agentUser objects and their properties."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# List agentUser objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the agentUser objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentuser-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentuser-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for Microsoft.DirectoryServices.agentUser not found
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [agentUser](../resources/agentuser.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_agentuser"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for Microsoft.DirectoryServices.agentUser not found
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentUser"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.agentUser",
      "id": "84e0b4dc-e852-29ed-1e5d-9e1f335611e8",
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
  ]
}
```

