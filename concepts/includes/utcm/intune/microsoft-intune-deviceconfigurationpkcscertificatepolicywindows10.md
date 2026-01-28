---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

Intune Device Configuration Pkcs Certificate Policy for Windows10


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| CertificateStore | Write | String | Target store certificate. Possible values are: user, machine. | `user`, `machine` |
| CertificateTemplateName | Write | String | PKCS Certificate Template Name | - |
| CertificationAuthority | Write | String | PKCS Certification Authority | - |
| CertificationAuthorityName | Write | String | PKCS Certification Authority Name | - |
| CustomSubjectAlternativeNames | Write | MSFT_MicrosoftGraphcustomSubjectAlternativeName[] | Custom Subject Alternative Name Settings. This collection can contain a maximum of 500 elements. | - |
| ExtendedKeyUsages | Write | MSFT_MicrosoftGraphextendedKeyUsage[] | Extended Key Usage (EKU) settings. This collection can contain a maximum of 500 elements. | - |
| SubjectAlternativeNameFormatString | Write | String | Custom String that defines the AAD Attribute. | - |
| SubjectNameFormatString | Write | String | Custom format to use with SubjectNameFormat = Custom. Example: CN=EmailAddress}},E=EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US | - |
| CertificateValidityPeriodScale | Write | String | Scale for the Certificate Validity Period. Possible values are: days, months, years. | `days`, `months`, `years` |
| CertificateValidityPeriodValue | Write | UInt32 | Value for the Certificate Validity Period | - |
| KeyStorageProvider | Write | String | Key Storage Provider (KSP). Possible values are: useTpmKspOtherwiseUseSoftwareKsp, useTpmKspOtherwiseFail, usePassportForWorkKspOtherwiseFail, useSoftwareKsp. | `useTpmKspOtherwiseUseSoftwareKsp`, `useTpmKspOtherwiseFail`, `usePassportForWorkKspOtherwiseFail`, `useSoftwareKsp` |
| RenewalThresholdPercentage | Write | UInt32 | Certificate renewal threshold percentage. Valid values 1 to 99 | - |
| SubjectAlternativeNameType | Write | String | Certificate Subject Alternative Name Type. Possible values are: none, emailAddress, userPrincipalName, customAzureADAttribute, domainNameService, universalResourceIdentifier. | `none`, `emailAddress`, `userPrincipalName`, `customAzureADAttribute`, `domainNameService`, `universalResourceIdentifier` |
| SubjectNameFormat | Write | String | Certificate Subject Name Format. Possible values are: commonName, commonNameIncludingEmail, commonNameAsEmail, custom, commonNameAsIMEI, commonNameAsSerialNumber, commonNameAsAadDeviceId, commonNameAsIntuneDeviceId, commonNameAsDurableDeviceId. | `commonName`, `commonNameIncludingEmail`, `commonNameAsEmail`, `custom`, `commonNameAsIMEI`, `commonNameAsSerialNumber`, `commonNameAsAadDeviceId`, `commonNameAsIntuneDeviceId`, `commonNameAsDurableDeviceId` |
| Description | Write | String | Admin provided description of the Device Configuration. | - |
| DisplayName | Key | String | Admin provided name of the device configuration. | - |
| Id | Write | String | The unique identifier for an entity. Read-only. | - |
| Assignments | Write | MSFT_DeviceManagementConfigurationPolicyAssignments[] | Represents the assignment to the Intune policy. | - |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |

#### MSFT_DeviceManagementConfigurationPolicyAssignments

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| dataType | Write | String | The type of the target assignment. | `#microsoft.graph.groupAssignmentTarget`, `#microsoft.graph.allLicensedUsersAssignmentTarget`, `#microsoft.graph.allDevicesAssignmentTarget`, `#microsoft.graph.exclusionGroupAssignmentTarget`, `#microsoft.graph.configurationManagerCollectionAssignmentTarget` |
| deviceAndAppManagementAssignmentFilterType | Write | String | The type of filter of the target assignment i.e. Exclude or Include. Possible values are:none, include, exclude. | `none`, `include`, `exclude` |
| deviceAndAppManagementAssignmentFilterId | Write | String | The Id of the filter for the target assignment. | - |
| groupId | Write | String | The group Id that is the target of the assignment. | - |
| groupDisplayName | Write | String | The group Display Name that is the target of the assignment. | - |
| collectionId | Write | String | The collection Id that is the target of the assignment.(ConfigMgr) | - |

#### MSFT_MicrosoftGraphCustomSubjectAlternativeName

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Name | Write | String | Custom SAN Name | - |
| SanType | Write | String | Custom SAN Type. Possible values are: none, emailAddress, userPrincipalName, customAzureADAttribute, domainNameService, universalResourceIdentifier. | `none`, `emailAddress`, `userPrincipalName`, `customAzureADAttribute`, `domainNameService`, `universalResourceIdentifier` |

#### MSFT_MicrosoftGraphExtendedKeyUsage

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Name | Write | String | Extended Key Usage Name | - |
| ObjectIdentifier | Write | String | Extended Key Usage Object Identifier | - |


### Permissions

#### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, DeviceManagementConfiguration.Read.All |
| Update    | Group.Read.All, DeviceManagementConfiguration.ReadWrite.All |



