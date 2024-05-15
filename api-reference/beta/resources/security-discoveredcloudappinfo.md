---
title: "discoveredCloudAppInfo resource type"
description: "**TODO: Add Description**"
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# discoveredCloudAppInfo resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-endpointdiscoveredcloudappdetail-list-appinfo.md)|[microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md) collection|Get a list of the [microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md) objects and their properties.|
|[Create](../api/security-endpointdiscoveredcloudappdetail-post-appinfo.md)|[microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md)|Create a new [microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md) object.|
|[Get](../api/security-discoveredcloudappinfo-get.md)|[microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md)|Read the properties and relationships of a [microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md) object.|
|[Update](../api/security-discoveredcloudappinfo-update.md)|[microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md)|Update the properties of a [microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md) object.|
|[Delete](../api/security-endpointdiscoveredcloudappdetail-delete-appinfo.md)|None|Delete a [microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|csaStarLevel|microsoft.graph.security.appInfoCsaStarLevel|**TODO: Add Description**.The possible values are: `selfAssessment`, `certification`, `attestation`, `cStarAssessment`, `continuousMonitoring`, `unknown`, `unknownFutureValue`.|
|dataAtRestEncryptionMethod|microsoft.graph.security.appInfoDataAtRestEncryptionMethod|**TODO: Add Description**.The possible values are: `aes`, `bitLocker`, `blowfish`, `des3`, `des`, `rc4`, `rsA`, `notSupported`, `unknown`, `unknownFutureValue`.|
|dataCenter|String|**TODO: Add Description**|
|dataRetentionPolicy|microsoft.graph.security.appInfoDataRetentionPolicy|**TODO: Add Description**.The possible values are: `dataRetained`, `deletedImmediately`, `deletedWithinTwoWeeks`, `deletedWithinOneMonth`, `deletedWithinThreeMonths`, `deletedWithinMoreThanThreeMonths`, `unknown`, `unknownFutureValue`.|
|dataTypes|microsoft.graph.security.appInfoUploadedDataTypes|**TODO: Add Description**.The possible values are: `documents`, `mediaFiles`, `codingFiles`, `creditCards`, `databaseFiles`, `none`, `unknown`, `unknownFutureValue`.|
|domainRegistrationDateTime|DateTimeOffset|**TODO: Add Description**|
|fedRampLevel|microsoft.graph.security.appInfoFedRampLevel|**TODO: Add Description**.The possible values are: `high`, `moderate`, `low`, `liSaaS`, `unknown`, `unknownFutureValue`, `notSupported`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `notSupported`.|
|founded|Int32|**TODO: Add Description**|
|gdprReadinessStatement|String|**TODO: Add Description**|
|headquarters|String|**TODO: Add Description**|
|holding|microsoft.graph.security.appInfoHolding|**TODO: Add Description**.The possible values are: `private`, `public`, `unknown`, `unknownFutureValue`.|
|hostingCompany|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|isAdminAuditTrail|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isCobitCompliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isCoppaCompliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isDataAuditTrail|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isDataClassification|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isDataOwnership|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isDisasterRecoveryPlan|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isDmca|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isFerpaCompliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isFfiecCompliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isFileSharing|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isFinraCompliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isFismaCompliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGaapCompliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprDataProtectionImpactAssessment|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprDataProtectionOfficer|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprDataProtectionSecureCrossBorderDataTransfer|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprImpactAssessment|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprLawfulBasisForProcessing|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprReportDataBreaches|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprRightsRelatedToAutomatedDecisionMaking|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprRightToAccess|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprRightToBeInformed|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprRightToDataPortablility|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprRightToErasure|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprRightToObject|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprRightToRectification|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprRightToRestrictionOfProcessing|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGdprSecureCrossBorderDataControl|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isGlbaCompliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isHipaaCompliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isHitrustCsfCompliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isHttpSecurityHeadersContentSecurityPolicy|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isHttpSecurityHeadersStrictTransportSecurity|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isHttpSecurityHeadersXContentTypeOptions|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isHttpSecurityHeadersXFrameOptions|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isHttpSecurityHeadersXXssProtection|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isIpAddressRestriction|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isIsae3402Compliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isIso27001Compliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isIso27017Compliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isIso27018Compliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isItarCompliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isMultiFactorAuthentication|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isPasswordPolicy|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isPasswordPolicyChangePasswordPeriod|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isPasswordPolicyCharacterCombination|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isPasswordPolicyPasswordHistoryAndReuse|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isPasswordPolicyPasswordLengthLimit|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isPasswordPolicyPersonalInformationUse|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isPenetrationTesting|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isPrivacyShieldCompliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isRememberPassword|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isRequiresUserAuthentication|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isSoc1Compliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isSoc2Compliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isSoc3Compliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isSoxCompliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isSp80053Compliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isSsae16Compliant|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isSupportsSaml|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isTrustedCertificate|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isUserAuditTrail|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isUserCanUploadData|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isUserRolesSupport|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|isValidCertificateName|microsoft.graph.security.cloudAppInfoState|**TODO: Add Description**.The possible values are: `true`, `false`, `unknown`, `unknownFutureValue`.|
|latestBreachDateTime|DateTimeOffset|**TODO: Add Description**|
|logonUrls|String|**TODO: Add Description**|
|pciDssVersion|microsoft.graph.security.appInfoPciDssVersion|**TODO: Add Description**.The possible values are: `v1`, `v2`, `v3`, `v3_1`, `v3_2`, `v3_2_1`, `notSupported`, `unknown`, `unknownFutureValue`, `v4`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `v4`.|
|tlsEncryptionProtocol|microsoft.graph.security.appInfoTlsEncryptionProtocol|**TODO: Add Description**.The possible values are: `tls1_0`, `tls1_1`, `tls1_2`, `tls1_3`, `notApplicable`, `notSupported`, `unknown`, `unknownFutureValue`.|
|vendor|String|**TODO: Add Description**|

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

