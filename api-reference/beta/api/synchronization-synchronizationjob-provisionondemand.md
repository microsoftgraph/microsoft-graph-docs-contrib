---
title: "synchronizationJob: provisionOnDemand"
description: "Select a user and provision the account on-demand."
author: "ArvindHarinder1"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# synchronizationJob: provisionOnDemand

Namespace: microsoft.graph

Select a user and provision the account on-demand. The rate limit for this API is 5 requests per 10 seconds. No user or group will be provisioned on-demand that would not have been provisioned through the regular provisioning cycles.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Synchronization.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Application.ReadWrite.OwnedBy, Synchronization.ReadWrite.All|

[!INCLUDE [rbac-synchronization-apis](../includes/rbac-for-apis/rbac-synchronization-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /servicePrincipals/{servicePrincipalsId}/synchronization/jobs/{synchronizationJobId}/provisionOnDemand
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|parameters|[synchronizationJobApplicationParameters](../resources/synchronization-synchronizationjobapplicationparameters.md) collection|Represents the objects that will be provisioned and the synchronization rules executed. The resource is primarily used for on-demand provisioning. |



## Response

If successful, this method returns a `200 OK` response code and a stringKeyStringValuePair.

## Examples

### Example 1: Provision users from Azure AD to third-party applications

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "synchronizationjob_provisionondemand_ADto3P"
}
-->
``` http
POST https://graph.microsoft.com/beta/servicePrincipals/c8c95753-f628-48e1-9fab-76c2d4cf624c/synchronization/jobs/3f7565a3-fde6-4e4d-bda8-1bb70aba3612/provisionOnDemand
Content-Type: application/json

{
  "parameters": [
    {
      "subjects": [
        {
          "objectId": "9bb0f679-a883-4a6f-8260-35b491b8b8c8",
          "objectTypeName": "User"
        }
      ],
      "ruleId": "ea807875-5618-4f0a-9125-0b46a05298ca"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/synchronizationjob-provisionondemand-adto3p-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/synchronizationjob-provisionondemand-adto3p-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/synchronizationjob-provisionondemand-adto3p-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/synchronizationjob-provisionondemand-adto3p-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/synchronizationjob-provisionondemand-adto3p-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/synchronizationjob-provisionondemand-adto3p-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.synchronizationSecretKeyStringValuePair"
}
-->
```
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.stringKeyStringValuePair",
    "key": "{\"result\":\"Skipped\",\"details\":{\"errorCode\":\"RedundantExport\",\"errorMessage\":\"The state of the user in both the source and target systems already match.\"}}",
    "value": "{\"action\":\"Other\",\"changeId\":\"g8ba3be8-1d7f-4a60-ae31-a8980da0a389\",\"endTime\":\"2020-06-26T13:58:24.7682084Z\",\"modifiedProperties\":[{\"displayName\":\"objectId\",\"oldValue\":null,\"newValue\":\"52cf7b7a-52be-4a9b-9c69-e4d4a4a14f76\"},{\"displayName\":\"accountEnabled\",\"oldValue\":null,\"newValue\":\"True\"},{\"displayName\":\"displayName\",\"oldValue\":null,\"newValue\":\"Bill Bob\"},{\"displayName\":\"mailNickname\",\"oldValue\":null,\"newValue\":\"Bill\"},{\"displayName\":\"userPrincipalName\",\"oldValue\":null,\"newValue\":\"BillBob@scimreftest.onmicrosoft.com\"},{\"displayName\":\"IsSoftDeleted\",\"oldValue\":null,\"newValue\":\"False\"},{\"displayName\":\"appRoleAssignments\",\"oldValue\":null,\"newValue\":\"User\"}],\"provisioningSteps\":[{\"name\":\"EntryImport\",\"type\":\"Import\",\"status\":\"Success\",\"description\":\"Retrieved User 'BillBob@scimreftest.onmicrosoft.com' from Azure Active Directory\",\"timestamp\":\"2020-06-26T13:58:24.5494971Z\",\"details\":{\"objectId\":\"52cf7b7a-52be-4a9b-9c69-e4d4a4a14f76\",\"accountEnabled\":\"True\",\"displayName\":\"Fill Bob\",\"mailNickname\":\"Bill\",\"userPrincipalName\":\"BillBob@scimreftest.onmicrosoft.com\",\"IsSoftDeleted\":\"False\",\"appRoleAssignments\":\"User\"}},{\"name\":\"EntryImport\",\"type\":\"Matching\",\"status\":\"Success\",\"description\":\"Retrieved  'BillBob@scimreftest.onmicrosoft.com' from customappsso\",\"timestamp\":\"2020-06-26T13:58:24.7214072Z\",\"details\":{\"active\":\"True\",\"displayName\":\"Bill Bob\",\"externalId\":\"Bill\",\"id\":\"52507a19-96ec-4e73-9250-3e65ffd2d926\",\"userName\":\"BillBob@scimreftest.onmicrosoft.com\"}},{\"name\":\"EntrySynchronizationScoping\",\"type\":\"Scoping\",\"status\":\"Success\",\"description\":\"Determine if User in scope by evaluating against each scoping filter\",\"timestamp\":\"2020-06-26T13:58:24.7526181Z\",\"details\":{\"IsActive\":\"True\",\"Assigned\":\"True\",\"IsEffectivelyEntitledForProvisioning\":\"True\",\"IsInProvisioningScopeDisplayName\":\"True\",\"ScopeEvaluationResult\":\"{}\"}},{\"name\":\"EntrySynchronizationSkip\",\"type\":\"Export\",\"status\":\"Skipped\",\"description\":\"The state of the user in both the source and target systems already match. No change to the User 'BillBob@scimreftest.onmicrosoft.com' currently needs to be made.\",\"timestamp\":\"2020-06-26T13:58:24.7682084Z\",\"details\":{\"SkipReason\":\"RedundantExport\"}}],\"reportableIdentifier\":\"BillBob@scimreftest.onmicrosoft.com\",\"startTime\":\"2020-06-26T13:58:24.5494971Z\",\"statusInfo\":{\"status\":\"Skipped\",\"errorCode\":null,\"reason\":null,\"additionalDetails\":null,\"errorCategory\":null,\"recommendedAction\":null},\"sourceIdentity\":{\"id\":\"62cf7b7a-52be-4a9b-9c69-e5d4a4a14f67\",\"type\":\"User\",\"displayName\":null,\"details\":null},\"sourceSystem\":{\"id\":null,\"name\":\"Azure Active Directory\",\"details\":null},\"targetIdentity\":{\"id\":\"52507a19-96ec-4e73-9250-3e65ffd2d926\",\"type\":\"urn:ietf:params:scim:schemas:extension:enterprise:2.0:User\",\"displayName\":null,\"details\":null},\"targetSystem\":{\"id\":null,\"name\":\"customappsso\",\"details\":null}}"
}
```

### Example 2: Sync on-demand from Active Directory to Azure Active Directory (Azure AD cloud sync)

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "synchronizationjob_provisionondemand_AD2AAD"
}
-->
``` http
POST https://graph.microsoft.com/beta/servicePrincipals/3e916d82-dd59-4944-824d-93092908fd8d/synchronization/jobs/264ea562-28cd-42b1-93e0-8de1f0560581/provisionOnDemand
Content-Type: application/json

{
  "parameters": [
    {
      "ruleId": "6c409270-f78a-4bc6-af23-7cf3ab6482fe",
      "subjects": [
        {
          "objectId": "CN=AdeleV,CN=Users,DC=corp,DC=chicago,DC=com",
          "objectTypeName": "user"
        }
      ]
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/synchronizationjob-provisionondemand-ad2aad-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/synchronizationjob-provisionondemand-ad2aad-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/synchronizationjob-provisionondemand-ad2aad-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/synchronizationjob-provisionondemand-ad2aad-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/synchronizationjob-provisionondemand-ad2aad-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.synchronizationSecretKeyStringValuePair"
}
-->
```
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://syncfabric.windowsazure.com/api/$metadata#microsoft.synchronization.stringKeyStringValuePair",
    "key": "{\"result\":\"Success\",\"details\":{}}",
    "value": "{\"provisioningSteps\":[{\"name\":\"EntryImportAdd\",\"type\":\"Import\",\"status\":\"Success\",\"description\":\"Received user 'adelev@chicago.com' change of type (Add) from Active Directory\",\"timestamp\":\"2022-04-21T18:40:07.8465145Z\",\"details\":{\"distinguishedName\":\"CN=AdeleV,CN=Users,DC=corp,DC=chicago,DC=com\",\"cn\":\"Adele Vest\",\"originatingReplicaToken\":\"{\\\"InvocationId\\\":\\\"6cbd7b45-b262-4dad-94a3-620503ea1f25\\\",\\\"Name\\\":\\\"DC01.esf.edu\\\"}\",\"sAMAccountName\":\"adelev\",\"targetAddress\":\"SMTP:adelev@esf0.mail.onmicrosoft.com\",\"givenName\":\"Adele\",\"objectSid\":\"AQUAAAAAAAUVAAAAXAMNf/YJ8nmaUZofGG4BAA==\",\"displayName\":\"Adele Vest\",\"msExchMailboxGuid\":\"+klu7DM5yE+9tOs6MuGxsw==\",\"msExchELCMailboxFlags\":\"2\",\"pwdLastSet\":\"132772253564048004\",\"initials\":\"S\",\"msExchRecipientDisplayType\":\"-2147483642\",\"streetAddress\":\"One Microsoft Way\",\"mail\":\"adelev@chicago.com\",\"sn\":\"AdeleV\",\"msExchSafeSendersHash\":\"gny5JQ==\",\"proxyAddresses\":\"X, 5, 0,  ... X400:C=US;A= ;P=ESF;O=MAIL;S=AdeleV;G=Adele;I=S; (5)\",\"objectGUID\":\"xxxxxxxLIUuBM8qK5Sxxxx\",\"legacyExchangeDN\":\"/o=ESF/ou=External (FYDIBOHF25SPDLT)/cn=Recipients/cn=b499521b46264967a6de75f1a08add7a\",\"msExchRecipientTypeDetails\":\"2147483648\",\"userAccountControl\":\"66048\",\"accountDisabled\":\"False\",\"countryCode\":\"840\",\"co\":\"United States\",\"l\":\"Chicago\",\"extensionAttribute10\":\"839153607\",\"c\":\"US\",\"mS-DS-ConsistencyGuid\":\"xxxxxxxLIUuBM8qK5Sxxxx\",\"mailNickname\":\"adelev\",\"st\":\"NY\",\"extensionAttribute15\":\"C1EA2EA6EC56F3D94D2D89D95D70E4D0\",\"extensionAttribute14\":\"F00177677\",\"postalCode\":\"13210\",\"extensionAttribute6\":\"A5\",\"msExchRemoteRecipientType\":\"4\",\"extensionAttribute5\":\"11\",\"userPrincipalName\":\"adelev@chicago.com\",\"adminDescription\":\"\",\"company\":\"\",\"department\":\"\",\"description\":\"\",\"employeeID\":\"\",\"employeeNumber\":\"\",\"employeeType\":\"\",\"errors\":\"\",\"extensionAttribute1\":\"\",\"extensionAttribute11\":\"\",\"extensionAttribute12\":\"\",\"extensionAttribute13\":\"\",\"extensionAttribute2\":\"\",\"extensionAttribute3\":\"\",\"extensionAttribute4\":\"\",\"extensionAttribute7\":\"\",\"extensionAttribute8\":\"\",\"extensionAttribute9\":\"\",\"facsimileTelephoneNumber\":\"\",\"homePhone\":\"\",\"info\":\"\",\"ipPhone\":\"\",\"isCriticalSystemObject\":\"\",\"logs\":\"\",\"middleName\":\"\",\"mobile\":\"\",\"msDS-HABSeniorityIndex\":\"\",\"msDS-InclusionTrigger\":\"\",\"msDS-PhoneticDisplayName\":\"\",\"msDS-preferredDataLocation\":\"\",\"msExchArchiveGUID\":\"\",\"msExchArchiveName\":\"\",\"msExchAssistantName\":\"\",\"msExchAuditAdmin\":\"\",\"msExchAuditDelegate\":\"\",\"msExchAuditDelegateAdmin\":\"\",\"msExchAuditOwner\":\"\",\"msExchBlockedSendersHash\":\"\",\"msExchBypassAudit\":\"\",\"msExchELCExpirySuspensionEnd\":\"\",\"msExchELCExpirySuspensionStart\":\"\",\"msExchEnableModeration\":\"\",\"msExchExtensionCustomAttribute1\":\"\",\"msExchExtensionCustomAttribute2\":\"\",\"msExchExtensionCustomAttribute3\":\"\",\"msExchExtensionCustomAttribute4\":\"\",\"msExchExtensionCustomAttribute5\":\"\",\"msExchHideFromAddressLists\":\"\",\"msExchImmutableId\":\"\",\"msExchLitigationHoldDate\":\"\",\"msExchLitigationHoldOwner\":\"\",\"msExchMailboxAuditEnable\":\"\",\"msExchMailboxAuditLogAgeLimit\":\"\",\"msExchModerationFlags\":\"\",\"msExchRequireAuthToSendTo\":\"\",\"msExchResourceCapacity\":\"\",\"msExchResourceDisplay\":\"\",\"msExchResourceMetaData\":\"\",\"msExchResourceSearchProperties\":\"\",\"msExchRetentionComment\":\"\",\"msExchRetentionURL\":\"\",\"msExchSafeRecipientsHash\":\"\",\"msExchSenderHintTranslations\":\"\",\"msExchTeamMailboxExpiration\":\"\",\"msExchTeamMailboxSharePointUrl\":\"\",\"msExchUsageLocation\":\"\",\"msExchUserHoldPolicies\":\"\",\"msRTCSIP-ApplicationOptions\":\"\",\"mSRTCSIP-DeploymentLocator\":\"\",\"msRTCSIP-Line\":\"\",\"msRTCSIP-OptionFlags\":\"\",\"msRTCSIP-OwnerUrn\":\"\",\"msRTCSIP-PrimaryUserAddress\":\"\",\"msRTCSIP-UserEnabled\":\"\",\"objectClass\":\"\",\"otherFacsimileTelephoneNumber\":\"\",\"otherHomePhone\":\"\",\"otherIpPhone\":\"\",\"otherMobile\":\"\",\"otherPager\":\"\",\"otherTelephone\":\"\",\"pager\":\"\",\"physicalDeliveryOfficeName\":\"\",\"postOfficeBox\":\"\",\"preferredLanguage\":\"\",\"telephoneAssistant\":\"\",\"telephoneNumber\":\"\",\"thumbnailPhoto\":\"\",\"title\":\"\",\"url\":\"\",\"userCertificate\":\"\",\"userSMIMECertificate\":\"\",\"whenChanged\":\"\",\"wWWHomePage\":\"\"}},{\"name\":\"EntryImport\",\"type\":\"Import\",\"status\":\"Success\",\"description\":\"Retrieved user 'adelev@chicago.com' from Active Directory\",\"timestamp\":\"2022-04-21T18:40:07.8778004Z\",\"details\":{\"distinguishedName\":\"CN=AdeleV,CN=Users,DC=corp,DC=chicago,DC=com\",\"cn\":\"Adele Vest\",\"originatingReplicaToken\":\"{\\\"InvocationId\\\":\\\"6cbd7b45-b262-4dad-94a3-620503ea1f25\\\",\\\"Name\\\":\\\"DC01.esf.edu\\\"}\",\"sAMAccountName\":\"adelev\",\"targetAddress\":\"SMTP:adelev@esf0.mail.onmicrosoft.com\",\"givenName\":\"Adele\",\"objectSid\":\"AQUAAAAAAAUVAAAAXAMNf/YJ8nmaUZofGG4BAA==\",\"displayName\":\"Adele Vest\",\"msExchMailboxGuid\":\"+klu7DM5yE+9tOs6MuGxsw==\",\"msExchELCMailboxFlags\":\"2\",\"pwdLastSet\":\"132772253564048004\",\"initials\":\"S\",\"msExchRecipientDisplayType\":\"-2147483642\",\"streetAddress\":\"One Microsoft Way\",\"mail\":\"adelev@chicago.com\",\"sn\":\"AdeleV\",\"msExchSafeSendersHash\":\"gny5JQ==\",\"proxyAddresses\":\"X, 5, 0,  ... X400:C=US;A= ;P=ESF;O=MAIL;S=AdeleV;G=Adele;I=S; (5)\",\"objectGUID\":\"xxxxxxxLIUuBM8qK5Sxxxx\",\"legacyExchangeDN\":\"/o=ESF/ou=External (FYDIBOHF25SPDLT)/cn=Recipients/cn=b499521b46264967a6de75f1a08add7a\",\"msExchRecipientTypeDetails\":\"2147483648\",\"userAccountControl\":\"66048\",\"accountDisabled\":\"False\",\"countryCode\":\"840\",\"co\":\"United States\",\"l\":\"Chicago\",\"extensionAttribute10\":\"839153607\",\"c\":\"US\",\"mS-DS-ConsistencyGuid\":\"xxxxxxxLIUuBM8qK5Sxxxx\",\"mailNickname\":\"adelev\",\"st\":\"NY\",\"extensionAttribute15\":\"C1EA2EA6EC56F3D94D2D89D95D70E4D0\",\"extensionAttribute14\":\"F00177677\",\"postalCode\":\"13210\",\"extensionAttribute6\":\"A5\",\"msExchRemoteRecipientType\":\"4\",\"extensionAttribute5\":\"11\",\"userPrincipalName\":\"adelev@chicago.com\",\"adminDescription\":\"\",\"company\":\"\",\"department\":\"\",\"description\":\"\",\"employeeID\":\"\",\"employeeNumber\":\"\",\"employeeType\":\"\",\"errors\":\"\",\"extensionAttribute1\":\"\",\"extensionAttribute11\":\"\",\"extensionAttribute12\":\"\",\"extensionAttribute13\":\"\",\"extensionAttribute2\":\"\",\"extensionAttribute3\":\"\",\"extensionAttribute4\":\"\",\"extensionAttribute7\":\"\",\"extensionAttribute8\":\"\",\"extensionAttribute9\":\"\",\"facsimileTelephoneNumber\":\"\",\"homePhone\":\"\",\"info\":\"\",\"ipPhone\":\"\",\"isCriticalSystemObject\":\"\",\"logs\":\"\",\"middleName\":\"\",\"mobile\":\"\",\"msDS-HABSeniorityIndex\":\"\",\"msDS-InclusionTrigger\":\"\",\"msDS-PhoneticDisplayName\":\"\",\"msDS-preferredDataLocation\":\"\",\"msExchArchiveGUID\":\"\",\"msExchArchiveName\":\"\",\"msExchAssistantName\":\"\",\"msExchAuditAdmin\":\"\",\"msExchAuditDelegate\":\"\",\"msExchAuditDelegateAdmin\":\"\",\"msExchAuditOwner\":\"\",\"msExchBlockedSendersHash\":\"\",\"msExchBypassAudit\":\"\",\"msExchELCExpirySuspensionEnd\":\"\",\"msExchELCExpirySuspensionStart\":\"\",\"msExchEnableModeration\":\"\",\"msExchExtensionCustomAttribute1\":\"\",\"msExchExtensionCustomAttribute2\":\"\",\"msExchExtensionCustomAttribute3\":\"\",\"msExchExtensionCustomAttribute4\":\"\",\"msExchExtensionCustomAttribute5\":\"\",\"msExchHideFromAddressLists\":\"\",\"msExchImmutableId\":\"\",\"msExchLitigationHoldDate\":\"\",\"msExchLitigationHoldOwner\":\"\",\"msExchMailboxAuditEnable\":\"\",\"msExchMailboxAuditLogAgeLimit\":\"\",\"msExchModerationFlags\":\"\",\"msExchRequireAuthToSendTo\":\"\",\"msExchResourceCapacity\":\"\",\"msExchResourceDisplay\":\"\",\"msExchResourceMetaData\":\"\",\"msExchResourceSearchProperties\":\"\",\"msExchRetentionComment\":\"\",\"msExchRetentionURL\":\"\",\"msExchSafeRecipientsHash\":\"\",\"msExchSenderHintTranslations\":\"\",\"msExchTeamMailboxExpiration\":\"\",\"msExchTeamMailboxSharePointUrl\":\"\",\"msExchUsageLocation\":\"\",\"msExchUserHoldPolicies\":\"\",\"msRTCSIP-ApplicationOptions\":\"\",\"mSRTCSIP-DeploymentLocator\":\"\",\"msRTCSIP-Line\":\"\",\"msRTCSIP-OptionFlags\":\"\",\"msRTCSIP-OwnerUrn\":\"\",\"msRTCSIP-PrimaryUserAddress\":\"\",\"msRTCSIP-UserEnabled\":\"\",\"objectClass\":\"\",\"otherFacsimileTelephoneNumber\":\"\",\"otherHomePhone\":\"\",\"otherIpPhone\":\"\",\"otherMobile\":\"\",\"otherPager\":\"\",\"otherTelephone\":\"\",\"pager\":\"\",\"physicalDeliveryOfficeName\":\"\",\"postOfficeBox\":\"\",\"preferredLanguage\":\"\",\"telephoneAssistant\":\"\",\"telephoneNumber\":\"\",\"thumbnailPhoto\":\"\",\"title\":\"\",\"url\":\"\",\"userCertificate\":\"\",\"userSMIMECertificate\":\"\",\"whenChanged\":\"\",\"wWWHomePage\":\"\"}},{\"name\":\"EntrySynchronizationScoping\",\"type\":\"Scoping\",\"status\":\"Success\",\"description\":\"Determine if user in scope by evaluating against each scoping filter\",\"timestamp\":\"2022-04-21T18:40:08.1590133Z\",\"details\":{\"Active in the source system\":\"True\",\"Scoping filter evaluation passed\":\"True\"}},{\"name\":\"EntryExportUpdate\",\"type\":\"Export\",\"status\":\"Success\",\"description\":\"User 'adelev@chicago.com' was updated in Azure Active Directory\",\"timestamp\":\"2022-04-21T18:40:09.5184649Z\",\"details\":{}}],\"modifiedProperties\":[{\"displayName\":\"AccountEnabled\",\"newValue\":\"True\"},{\"displayName\":\"Alias\",\"newValue\":\"adelev\"},{\"displayName\":\"City\",\"newValue\":\"Chicago\"},{\"displayName\":\"CommonName\",\"newValue\":\"Adele Vest\"},{\"displayName\":\"Country\",\"newValue\":\"United States\"},{\"displayName\":\"CountryCode\",\"newValue\":\"840\"},{\"displayName\":\"CountryLetterCode\",\"newValue\":\"US\"},{\"displayName\":\"DisplayName\",\"newValue\":\"Adele Vest\"},{\"displayName\":\"DnsDomainName\",\"newValue\":\"esf.edu\"},{\"displayName\":\"ExtensionAttribute10\",\"newValue\":\"839153607\"},{\"displayName\":\"ExtensionAttribute14\",\"newValue\":\"F00177677\"},{\"displayName\":\"ExtensionAttribute15\",\"newValue\":\"C1EA2EA6EC56F3D94D2D89D95D70E4D0\"},{\"displayName\":\"ExtensionAttribute5\",\"newValue\":\"11\"},{\"displayName\":\"ExtensionAttribute6\",\"newValue\":\"A5\"},{\"displayName\":\"GivenName\",\"newValue\":\"Adele\"},{\"displayName\":\"Initials\",\"newValue\":\"S\"},{\"displayName\":\"LastPasswordChangeTimestamp\",\"newValue\":\"20210927140916.0Z\"},{\"displayName\":\"LegacyExchangeDN\",\"newValue\":\"/o=ESF/ou=External (FYDIBOHF25SPDLT)/cn=Recipients/cn=b499521b46264967a6de75f1a08add7a\"},{\"displayName\":\"Mail\",\"newValue\":\"adelev@chicago.com\"},{\"displayName\":\"MSExchElcMailboxFlags\",\"newValue\":\"2\"},{\"displayName\":\"MSExchMailboxGuid\",\"newValue\":\"+klu7DM5yE+9tOs6MuGxsw==\"},{\"displayName\":\"MSExchRecipientDisplayType\",\"newValue\":\"-2147483642\"},{\"displayName\":\"MSExchRecipientTypeDetails\",\"newValue\":\"2147483648\"},{\"displayName\":\"MSExchRemoteRecipientType\",\"newValue\":\"4\"},{\"displayName\":\"MSExchSafeSendersHash\",\"newValue\":\"gny5JQ==\"},{\"displayName\":\"NetBiosName\",\"newValue\":\"ESF\"},{\"displayName\":\"OnPremisesDistinguishedName\",\"newValue\":\"CN=AdeleV,CN=Users,DC=corp,DC=chicago,DC=com\"},{\"displayName\":\"OnPremiseSecurityIdentifier\",\"newValue\":\"AQUAAAAAAAUVAAAAXAMNf/YJ8nmaUZofGG4BAA==\"},{\"displayName\":\"OnPremisesSamAccountName\",\"newValue\":\"adelev\"},{\"displayName\":\"OnPremisesUserPrincipalName\",\"newValue\":\"adelev@chicago.com\"},{\"displayName\":\"PostalCode\",\"newValue\":\"13210\"},{\"displayName\":\"ProxyAddresses\",\"newValue\":\"X, 5, 0,  ... X400:C=US;A= ;P=ESF;O=MAIL;S=AdeleV;G=Adele;I=S; (5)\"},{\"displayName\":\"State\",\"newValue\":\"NY\"},{\"displayName\":\"StreetAddress\",\"newValue\":\"One Microsoft Way\"},{\"displayName\":\"Surname\",\"newValue\":\"AdeleV\"},{\"displayName\":\"TargetAddress\",\"newValue\":\"SMTP:adelev@esf0.mail.onmicrosoft.com\"},{\"displayName\":\"UserPrincipalName\",\"newValue\":\"adelev@chicago.com\"}],\"action\":\"Update\",\"changeId\":\"582595f3-53be-4843-bf0c-f57dbf8fae96\",\"endTime\":\"2022-04-21T18:40:09.5496702Z\",\"reportableIdentifier\":\"adelev@chicago.com\",\"sourceIdentity\":{\"id\":\"38a2171b-8b04-4b21-8133-ca8ae52250f3\",\"type\":\"user\"},\"sourceSystem\":{\"name\":\"Active Directory\"},\"startTime\":\"2022-04-21T18:40:07.8309453Z\",\"statusInfo\":{\"status\":\"Success\"},\"targetIdentity\":{\"id\":\"87cb2512-8e7f-4543-a9c9-e7cf8756a3ad\",\"type\":\"User\"},\"targetSystem\":{\"name\":\"Azure Active Directory\"}}"
}
```

### Example 3: Provision a group and two of its members on demand

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "synchronizationjob_provisionondemand_Group"
}
-->
``` http
POST https://graph.microsoft.com/beta/servicePrincipals/4e116d82-dd59-4944-824d-93091408fd8d/synchronization/jobs/664ea562-18cd-42bb-33e0-8de1f0560581/provisionOnDemand
Content-Type: application/json

{
  "parameters": [
    {
      "ruleId": "33f7c90d-bf71-41b1-bda6-aaf0ddbee5d8#V2",
      "subjects": [
        {
          "objectId": "8213fd99-d6b6-417b-8e13-af6334856215",
          "objectTypeName": "Group",
          "links": {
            "members": [
              {
                "objectId": "cbc86211-6ada-4803-b73f-8039cf56d8a2",
                "objectTypeName": "User"
              },
              {
                "objectId": "2bc86211-6ada-4803-b73f-8039cf56d8a2",
                "objectTypeName": "User"
              }
            ]
          }
        }
      ]
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/synchronizationjob-provisionondemand-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/synchronizationjob-provisionondemand-group-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/synchronizationjob-provisionondemand-group-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/synchronizationjob-provisionondemand-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/synchronizationjob-provisionondemand-group-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/synchronizationjob-provisionondemand-group-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.synchronizationSecretKeyStringValuePair"
}
-->
```
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://syncfabric.windowsazure.com/api/$metadata#microsoft.synchronization.stringKeyStringValuePair",
    "key": "{\"result\":\"Success\",\"details\":{}}",
    "value": "{}"
}
```

