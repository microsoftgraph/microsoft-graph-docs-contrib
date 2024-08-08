---
title: "Get discoveredCloudAppInfo"
description: "Get the details of risk attributes of the discovered cloud apps."
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get discoveredCloudAppInfo

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the details of the security, legal & compliance risk attributes of the discovered cloud apps.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-discoveredcloudappinfo-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-discoveredcloudappinfo-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/dataDiscovery/cloudAppDiscovery/uploadedStreams/{cloudAppDiscoveryReportId}/microsoft.graph.security.aggregatedAppsDetails(period=duration'{duration}')/{appId}/appInfo
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.discoveredCloudAppInfo](../resources/security-discoveredcloudappinfo.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_discoveredcloudappinfo"
}
-->
``` http
GET https://graph.microsoft.com/beta/discoveredCloudAppDetail/appInfo
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.discoveredCloudAppInfo"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.discoveredCloudAppInfo",
    "id": "93b60b3e-3a28-bf33-2d73-3cb0199c5f7a",
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
    "encryptionProtocol": "String",
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
}
```

