---
title: "discoveredCloudAppInfo resource type"
description: Read the details of discovered app risk attributes resources.
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# discoveredCloudAppInfo resource type

Read the details of discovered app risk attributes resources.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/security-discoveredcloudappinfo-get.md)|[microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md)|Read the properties and relationships of a discovered cloud app.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|csaStarLevel|microsoft.graph.security.appInfoCsaStarLevel|The app's CSA star program certification level. Possible values are: `selfAssessment`, `certification`, `attestation`, `cStarAssessment`, `continuousMonitoring`, `unknown`, `unknownFutureValue`.|
|dataAtRestEncryptionMethod|microsoft.graph.security.appInfoDataAtRestEncryptionMethod|The app's encryption mode for data at rest. The possible values are: `aes`, `bitLocker`, `blowfish`, `des3`, `des`, `rc4`, `rsA`, `notSupported`, `unknown`, `unknownFutureValue.`|
|dataCenter|String|The countries/regions in which your data center resides.|
|dataRetentionPolicy|microsoft.graph.security.appInfoDataRetentionPolicy|The app's policy for user data retention after account termination. The possible values are: `dataRetained`, `deletedImmediately`, `deletedWithinTwoWeeks`, `deletedWithinOneMonth`, `deletedWithinThreeMonths`, `deletedWithinMoreThanThreeMonths`, `unknown`, `unknownFutureValue`.|
|dataTypes|microsoft.graph.security.appInfoUploadedDataTypes|The data types that an end user can upload to the app. The possible values are: `documents`, `mediaFiles`, `codingFiles`, `creditCards`, `databaseFiles`, `none`, `unknown`, `unknownFutureValue`.|
|domainRegistrationDateTime|DateTimeOffset|The date that the app domain was registered.|
|fedRampLevel|microsoft.graph.security.appInfoFedRampLevel|The app's FedRAMP compliant status. The possible values are: `high`, `moderate`, `low`, `liSaaS`, `unknown`, `unknownFutureValue`, `notSupported`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `notSupported` .|
|founded|Int32|The year that the specific app vendor was established.|
|gdprReadinessStatement|String|The app's GDPR readiness in relation to policies app provides to safegaurd personal user data.|
|headquarters|String|The location of the app's headquarters.|
|holding|microsoft.graph.security.appInfoHolding|The app's ownership model. The possible values are: `private`, `public`, `unknown`, `unknownFutureValue`.|
|hostingCompany|String|The company name that provides hosting services for the app.|
|id|String|The app's identified unique SaaS ID.Inherited from [microsoft.graph.entity](../resources/entity.md).|
|isAdminAuditTrail|microsoft.graph.security.cloudAppInfoState|The app's availability of an admin audit trail. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isCobitCompliant|microsoft.graph.security.cloudAppInfoState|The app's compliant status with the Control Objectives for Information Technology (COBIT). The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isCoppaCompliant|microsoft.graph.security.cloudAppInfoState|The app's compliant status with the Children's Online Privacy Protection Rule (COPPA). The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isDataAuditTrail|microsoft.graph.security.cloudAppInfoState|The app's compliant status with availability of a data audit trail. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isDataClassification|microsoft.graph.security.cloudAppInfoState|The app's compliant status with regards to data classification. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isDataOwnership|microsoft.graph.security.cloudAppInfoState|The app's compliant status pertaining to data ownership. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue` .|
|isDisasterRecoveryPlan|microsoft.graph.security.cloudAppInfoState|The app has a disaster recovery plan. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isDmca|microsoft.graph.security.cloudAppInfoState|The app's compliant status with the Digital Millennium Copyright Act (DMCA). The possible values are: `true`, `false`, `unknown`, `unknownFutureValue` |
|isFerpaCompliant|microsoft.graph.security.cloudAppInfoState|The app's compliant status with the Family Educational Rights and Privacy Act (FERPA). The possible values are: `true`, `false`, `unknown`, `unknownFutureValue` .|
|isFfiecCompliant|microsoft.graph.security.cloudAppInfoState|The app's compliant status with the Federal Financial Institutions Examination Council's guidance on the risk management. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isFileSharing|microsoft.graph.security.cloudAppInfoState|The app has features that allow file sharing between users. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isFinraCompliant|microsoft.graph.security.cloudAppInfoState|The app's compliant status with the Financial Industry Regulatory Authority (FINRA). The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isFismaCompliant|microsoft.graph.security.cloudAppInfoState|The app's compliant status with the Federal Information Security Modernization Act (FISMA). The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGaapCompliant|microsoft.graph.security.cloudAppInfoState|The app's compliant status with the Generally Accepted Accounting Principles (GAAP). The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprDataProtectionImpactAssessment|microsoft.graph.security.cloudAppInfoState|The app conducts regular GDPR data assessments to identify risk to individuals. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprDataProtectionOfficer|microsoft.graph.security.cloudAppInfoState|The app appoints a data protection officer to oversee data security strategy and GDPR compliance. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprDataProtectionSecureCrossBorderDataTransfer|microsoft.graph.security.cloudAppInfoState|The app securely transfers data across borders as GDPR guidelines recommend. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprImpactAssessment|microsoft.graph.security.cloudAppInfoState|The app conducts data protection GDPR impact assessments to identify risk to individuals. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprLawfulBasisForProcessing|microsoft.graph.security.cloudAppInfoState|The app has a valid lawful basis for processing personal data. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprReportDataBreaches|microsoft.graph.security.cloudAppInfoState|The app reports personal data breaches to the relevant supervisory authority as per GDPR. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprRightsRelatedToAutomatedDecisionMaking|microsoft.graph.security.cloudAppInfoState|The app provides specific rights related to automated decision-making and profiling as per GDPR. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprRightToAccess|microsoft.graph.security.cloudAppInfoState|The app gives the rights to obtain a copy of a user's personal data as per GDPR. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprRightToBeInformed|microsoft.graph.security.cloudAppInfoState|The app gives the right to inform users about the data collection and use of their personal data as per GDPR. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprRightToDataPortablility|microsoft.graph.security.cloudAppInfoState|The app provides individuals with the ability to obtain and reuse their personal data for their own purposes across different services upon request. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprRightToErasure|microsoft.graph.security.cloudAppInfoState|The app stops processing and deletes an individual's personal data upon request. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprRightToObject|microsoft.graph.security.cloudAppInfoState|The app provides individuals with the ability to object to the processing of their personal data in certain circumstances. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprRightToRectification|microsoft.graph.security.cloudAppInfoState|The app provides individuals with the ability to rectify their personal data. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprRightToRestrictionOfProcessing|microsoft.graph.security.cloudAppInfoState|The app provides individuals with the ability to block or suppress the processing of personal data. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprSecureCrossBorderDataControl|microsoft.graph.security.cloudAppInfoState|The App securely transfers data across borders. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGlbaCompliant|microsoft.graph.security.cloudAppInfoState|The App is compliant with the Gramm-Leach-Bliley Act (GLBA) compliant. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isHipaaCompliant|microsoft.graph.security.cloudAppInfoState|The App is compliant with the Health Insurance Portability and Accountability Act (HIPAA). The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isHitrustCsfCompliant|microsoft.graph.security.cloudAppInfoState|The App is compliant with the HITRUST Framework (HITRUST CSF). The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isHttpSecurityHeadersContentSecurityPolicy|microsoft.graph.security.cloudAppInfoState|The App is compliant with the HITRUST Framework (HITRUST CSF). The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isHttpSecurityHeadersStrictTransportSecurity|microsoft.graph.security.cloudAppInfoState|The App's HTTP security headers provide another layer of security by helping to mitigate attacks and security vulnerabilities. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isHttpSecurityHeadersXContentTypeOptions|microsoft.graph.security.cloudAppInfoState|The App's HTTP's security headers provide another layer of security by helping to mitigate attacks and security vulnerabilities. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isHttpSecurityHeadersXFrameOptions|microsoft.graph.security.cloudAppInfoState|The App's HTTP security headers provide another layer of security by helping to mitigate attacks and security vulnerabilities. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isHttpSecurityHeadersXXssProtection|microsoft.graph.security.cloudAppInfoState|The App's HTTP security headers provide another layer of security by helping to mitigate attacks and security vulnerabilities. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isIpAddressRestriction|microsoft.graph.security.cloudAppInfoState|The App supports the restriction of specific IP addresses by the app. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isIsae3402Compliant|microsoft.graph.security.cloudAppInfoState|The App is ISAE3402 compliant. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isIso27001Compliant|microsoft.graph.security.cloudAppInfoState|The App is ISO27001 compliant. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isIso27017Compliant|microsoft.graph.security.cloudAppInfoState|The App is ISO27017 compliant. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isIso27018Compliant|microsoft.graph.security.cloudAppInfoState|The App is ISO27018 compliant. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isItarCompliant|microsoft.graph.security.cloudAppInfoState|The App is compliant with International Traffic in Arms Regulations (ITAR). The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isMultiFactorAuthentication|microsoft.graph.security.cloudAppInfoState|The App supports multifactor authentication. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isPasswordPolicy|microsoft.graph.security.cloudAppInfoState|The App enforces a password policy. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isPasswordPolicyChangePasswordPeriod|microsoft.graph.security.cloudAppInfoState|The App forces users to reset their password periodically. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isPasswordPolicyCharacterCombination|microsoft.graph.security.cloudAppInfoState|The App forces a character combination on password creation. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isPasswordPolicyPasswordHistoryAndReuse|microsoft.graph.security.cloudAppInfoState|The App disallows the reuse of old passwords. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isPasswordPolicyPasswordLengthLimit|microsoft.graph.security.cloudAppInfoState|The App enforces a length limit on password creation. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isPasswordPolicyPersonalInformationUse|microsoft.graph.security.cloudAppInfoState|The App disallows the use of personal information in passwords. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isPenetrationTesting|microsoft.graph.security.cloudAppInfoState|The App carries out penetration testing to detect and assess network vulnerabilities. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isPrivacyShieldCompliant|microsoft.graph.security.cloudAppInfoState|The App complies with the EU-US Privacy Shield Framework. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isRememberPassword|microsoft.graph.security.cloudAppInfoState|The App enables the option for remembering and saving user passwords in the app. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isRequiresUserAuthentication|microsoft.graph.security.cloudAppInfoState|The App requires user authentication. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isSoc1Compliant|microsoft.graph.security.cloudAppInfoState|The App is Soc1 compliant. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isSoc2Compliant|microsoft.graph.security.cloudAppInfoState|The App is Soc2 compliant. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isSoc3Compliant|microsoft.graph.security.cloudAppInfoState|The App is Soc3 compliant. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isSoxCompliant|microsoft.graph.security.cloudAppInfoState|The App is Sox compliant. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isSp80053Compliant|microsoft.graph.security.cloudAppInfoState|The App is Sp80053 compliant. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isSsae16Compliant|microsoft.graph.security.cloudAppInfoState|The App is Ssae16 compliant. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isSupportsSaml|microsoft.graph.security.cloudAppInfoState|The App supports SAML authentication. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isTrustedCertificate|microsoft.graph.security.cloudAppInfoState|The App server provides a trusted SSL cetificate. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isUserAuditTrail|microsoft.graph.security.cloudAppInfoState|The App supports availability of audit trail per user account. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isUserCanUploadData|microsoft.graph.security.cloudAppInfoState|The App supports the ability of users to upload data. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isUserRolesSupport|microsoft.graph.security.cloudAppInfoState|The App supports distribution of users by roles and levels of permission. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|isValidCertificateName|microsoft.graph.security.cloudAppInfoState|The App server provide an SSL certificate matching domain name. The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`. |
|latestBreachDateTime|DateTimeOffset|The last date of company's data breach.|
|logonUrls|String|The URL that users can use to sign into the app.|
|pciDssVersion|microsoft.graph.security.appInfoPciDssVersion|The pciDss version. The possible values are: `v1`, `v2`, `v3`, `v3_1`, `v3_2`, `v3_2_1`, `notSupported`, `unknown`, `unknownFutureValue`, `v4`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `v4`.|
|tlsEncryptionProtocol|microsoft.graph.security.appInfoTlsEncryptionProtocol|The TLS encryption protocol version. The possible values are: `tls1_0`, `tls1_1`, `tls1_2`, `tls1_3`, `notApplicable`, `notSupported`, `unknown`, `unknownFutureValue`.|
|vendor|String|The app vendor.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.discoveredCloudAppInfo",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.discoveredCloudAppInfo",
  "id": "String (identifier)",
  "isGdprDataProtectionImpactAssessment": "String",
  "isGdprDataProtectionSecureCrossBorderDataTransfer": "String",
  "isHttpSecurityHeadersContentSecurityPolicy": "String",
  "isHttpSecurityHeadersStrictTransportSecurity": "String",
  "isHttpSecurityHeadersXContentTypeOptions": "String",
  "isHttpSecurityHeadersXFrameOptions": "String",
  "isHttpSecurityHeadersXXssProtection": "String",
  "isTrustedCertificate": "String",
  "isValidCertificateName": "String",
  "isCoppaCompliant": "String",
  "isFerpaCompliant": "String",
  "isFfiecCompliant": "String",
  "isFinraCompliant": "String",
  "isFismaCompliant": "String",
  "isGaapCompliant": "String",
  "isGdprDataProtectionOfficer": "String",
  "isGdprImpactAssessment": "String",
  "isGdprLawfulBasisForProcessing": "String",
  "isGdprReportDataBreaches": "String",
  "isGdprRightToAccess": "String",
  "isGdprRightToBeInformed": "String",
  "isGdprRightToDataPortablility": "String",
  "isGdprRightToErasure": "String",
  "isGdprRightToObject": "String",
  "isGdprRightToRectification": "String",
  "isGdprRightToRestrictionOfProcessing": "String",
  "isGdprRightsRelatedToAutomatedDecisionMaking": "String",
  "isGdprSecureCrossBorderDataControl": "String",
  "isGlbaCompliant": "String",
  "isHipaaCompliant": "String",
  "isHitrustCsfCompliant": "String",
  "isIsae3402Compliant": "String",
  "isIso27018Compliant": "String",
  "isItarCompliant": "String",
  "isPrivacyShieldCompliant": "String",
  "isSoc1Compliant": "String",
  "isSoxCompliant": "String",
  "isSsae16Compliant": "String",
  "dataTypes": "String",
  "csaStarLevel": "String",
  "fedRampLevel": "String",
  "pciDssVersion": "String",
  "dataAtRestEncryptionMethod": "String",
  "holding": "String",
  "tlsEncryptionProtocol": "String",
  "dataCenter": "String",
  "headquarters": "String",
  "founded": "Integer",
  "isAdminAuditTrail": "String",
  "isCobitCompliant": "String",
  "isDataAuditTrail": "String",
  "isDataClassification": "String",
  "isDataOwnership": "String",
  "dataRetentionPolicy": "String",
  "isDisasterRecoveryPlan": "String",
  "isDmca": "String",
  "isFileSharing": "String",
  "isIpAddressRestriction": "String",
  "isIso27001Compliant": "String",
  "isIso27017Compliant": "String",
  "isMultiFactorAuthentication": "String",
  "isPasswordPolicy": "String",
  "isPasswordPolicyChangePasswordPeriod": "String",
  "isPasswordPolicyCharacterCombination": "String",
  "isPasswordPolicyPasswordHistoryAndReuse": "String",
  "isPasswordPolicyPasswordLengthLimit": "String",
  "isPasswordPolicyPersonalInformationUse": "String",
  "isPenetrationTesting": "String",
  "isRememberPassword": "String",
  "isRequiresUserAuthentication": "String",
  "isSoc2Compliant": "String",
  "isSoc3Compliant": "String",
  "isSp80053Compliant": "String",
  "isSupportsSaml": "String",
  "isUserAuditTrail": "String",
  "isUserCanUploadData": "String",
  "isUserRolesSupport": "String",
  "latestBreachDateTime": "String (timestamp)",
  "domainRegistrationDateTime": "String (timestamp)",
  "gdprReadinessStatement": "String",
  "hostingCompany": "String",
  "logonUrls": "String",
  "vendor": "String"
}
```

