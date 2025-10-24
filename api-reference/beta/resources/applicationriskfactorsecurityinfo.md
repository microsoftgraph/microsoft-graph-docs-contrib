---
title: "applicationRiskFactorSecurityInfo resource type"
description: "Provides detailed security posture information for an application, including encryption standards, authentication controls, audit capabilities, and SSL/TLS certificate validation."
author: "HildaK-pm"
ms.date: 10/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# applicationRiskFactorSecurityInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the set of security characteristics used to evaluate the overall security health of an application. It includes details about encryption, authentication, audit logging, SSL/TLS configuration, and exposure to known vulnerabilities.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|certificate|[applicationRiskFactorCertificateInfo](../resources/applicationriskfactorcertificateinfo.md)|Contains SSL/TLS certificate validation and trust information for the application's domain.|
|domainToCheck|String|Specifies the domain or hostname evaluated during the security assessment.|
|hasAdminAuditTrail|Boolean|Indicates whether the application maintains an audit trail for administrative actions.|
|hasAnonymousUsage|Boolean|Indicates whether the application allows anonymous or unauthenticated usage.|
|hasDataAuditTrail|Boolean|Indicates whether the application logs access or modification of customer data for audit purposes.|
|hasDataClassification|Boolean|Indicates whether the application classifies and labels data based on sensitivity levels.|
|hasDataEncrypted|Boolean|Indicates whether data at rest and in transit are encrypted using approved algorithms.|
|hasEnforceTransportEnc|Boolean|Indicates whether HTTPS or equivalent secure transport is enforced for all communication channels.|
|hasIpRestriction|Boolean|Indicates whether access to the application can be restricted based on IP address or network range.|
|hasMFA|Boolean|Indicates whether the application supports or enforces multi-factor authentication (MFA).|
|hasPenTest|Boolean|Indicates whether the application undergoes periodic penetration testing or external security reviews.|
|hasRememberPassword|Boolean|Indicates whether the application supports password-saving functionality, which may pose a security risk.|
|hasSamlSupport|Boolean|Indicates whether the application supports SAML-based single sign-on (SSO).|
|hasUserAuditLogs|Boolean|Indicates whether user activity is logged for security or compliance monitoring.|
|hasUserDataUpload|Boolean|Indicates whether users can upload or store personal or organizational data within the application.|
|hasUserRolesSupport|Boolean|Indicates whether the application supports role-based access control (RBAC).|
|hasValidCertName|Boolean|Indicates whether the certificate’s common name matches the application’s verified domain.|
|httpsSecurityHeaders|String collection|Lists the HTTP security headers detected for the application (for example, HSTS, X-Frame-Options, or CSP).|
|isCertTrusted|Boolean|Indicates whether the application’s certificate is signed by a trusted certificate authority (CA).|
|isDrownVulnerable|Boolean|Indicates whether the application is vulnerable to the DROWN (Decrypting RSA with Obsolete and Weakened eNcryption) attack.|
|isHeartbleedProof|Boolean|Indicates whether the application’s SSL implementation is protected from the Heartbleed vulnerability.|
|lastBreachDate|Date|Specifies the date of the last publicly reported data breach or security incident related to the application, if known.|
|latestValidSSL|sslVersion|Specifies the latest SSL/TLS protocol version supported by the application. The possible values are: `none`, `ssl3_0`, `tls1_0`, `tls1_1`, `tls1_2`, `tls1_3`, `notSupported`, `unknownFutureValue`.|
|passwordPolicy|passwordPolicy|Specifies the password policy enforced by the application. The possible values are: `none`, `changePasswordPeriod`, `charactersCombination`, `passwordHistoryAndReuse`, `passwordLengthLimit`, `personalInformationUse`, `unknownFutureValue`.|
|restEncryptionType|restEncryptionType|Specifies the encryption algorithm used for data at rest. The possible values are: `none`, `aes`, `bitlocker`, `blowfish`, `des`, `rc4`, `rsa`, `notSupported`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationRiskFactorSecurityInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.applicationRiskFactorSecurityInfo",
  "hasMFA": "Boolean",
  "hasAdminAuditTrail": "Boolean",
  "hasAnonymousUsage": "Boolean",
  "certificate": {
    "@odata.type": "microsoft.graph.applicationRiskFactorCertificateInfo"
  },
  "isCertTrusted": "Boolean",
  "hasDataAuditTrail": "Boolean",
  "hasDataClassification": "Boolean",
  "hasDataEncrypted": "Boolean",
  "domainToCheck": "String",
  "isDrownVulnerable": "Boolean",
  "hasEnforceTransportEnc": "Boolean",
  "isHeartbleedProof": "Boolean",
  "httpsSecurityHeaders": [
    "String"
  ],
  "hasIpRestriction": "Boolean",
  "latestValidSSL": "String",
  "passwordPolicy": "String",
  "hasPenTest": "Boolean",
  "hasRememberPassword": "Boolean",
  "restEncryptionType": "String",
  "hasUserRolesSupport": "Boolean",
  "hasSamlSupport": "Boolean",
  "hasUserAuditLogs": "Boolean",
  "hasUserDataUpload": "Boolean",
  "hasValidCertName": "Boolean",
  "lastBreachDate": "Date"
}
```

