---
title: "cloudCertificationAuthorityLeafCertificate resource type"
description: "Entity that represents a leaf certificate issued by a cloud certification authority."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# cloudCertificationAuthorityLeafCertificate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity that represents a leaf certificate issued by a cloud certification authority.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List cloudCertificationAuthorityLeafCertificates](../api/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate-list.md)|[cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md) collection|List properties and relationships of the [cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md) objects.|
|[Get cloudCertificationAuthorityLeafCertificate](../api/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate-get.md)|[cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md)|Read properties and relationships of the [cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md) object.|
|[Create cloudCertificationAuthorityLeafCertificate](../api/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate-create.md)|[cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md)|Create a new [cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md) object.|
|[Update cloudCertificationAuthorityLeafCertificate](../api/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate-update.md)|[cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md)|Update the properties of a [cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|certificateAlgorithm|cloudCertificationAuthorityCertificateAlgorithm|Public-key algorithm of the leaf certificate, independent of the issuing certification authority's key algorithm. The possible values are: `unknown`, `rsa`, `ecc`, `unknownFutureValue`. Returns `unknown` when supported metadata is unavailable. Read-only. Supports `$select`.|
|certificateKeySize|[cloudCertificationAuthorityCertificateKeySize](../resources/intune-cloudpkigraphservice-cloudcertificationauthoritycertificatekeysize.md)|RSA key size or elliptic curve of the leaf certificate. Returns `unknown` when supported metadata is unavailable. Read-only. Supports `$select`.|
|certificateStatus|[cloudCertificationAuthorityLeafCertificateStatus](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificatestatus.md)|The current status of a certificate. Active value indicates the is in its validity period and not revoked. Revoked value indicates the certificate has been revoked and is no longer valid. Expired value indicates that the validity period of the certificate has lapsed. Possible values are: active, revoked, expired. Read-only. Supports $filter and $orderby. Possible values are: `unknown`, `active`, `revoked`, `expired`, `unknownFutureValue`.|
|certificationAuthorityIssuerUri|String|The URI of the certification authority that issued the certificate. Read-only.|
|crlDistributionPointUrl|String|URL to find the relevant Certificate Revocation List for this certificate. Read-only.|
|deviceId|String|The unique identifier of the managed device for which the certificate was created. This ID is assigned at device enrollment time. Read-only. Supports $select.|
|deviceName|String|Name of the device for which the certificate was created. Read-only. Supports $select.|
|devicePlatform|String|The platform of the device for which the certificate was created. Possible values are: Android, AndroidForWork, iOS, MacOS, WindowsPhone81, Windows81AndLater, Windows10AndLater, AndroidWorkProfile, Unknown, AndroidAOSP, AndroidMobileApplicationManagement, iOSMobileApplicationManagement. Default value: Unknown. Read-only. Supports $select.|
|extendedKeyUsages|String collection|Certificate extensions that further define the purpose of the public key contained in a certificate. Data is formatted as a comma-separated list of object identifiers (OID). For example a possible value is "1.3.6.1.5.5.7.3.2". Read-only. Nullable.|
|hashingAlgorithm|[cloudCertificationAuthorityHashingAlgorithm](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityhashingalgorithm.md)|Hash used in the leaf certificate's signature, not its public-key algorithm or thumbprint hash. Returns `unknown` when supported metadata is unavailable. Read-only. Supports `$select`.|
|id|String|The leaf certificate entity instance identifier, which is a randomly-generated globally unique identifier. Read-only. Supports $select.|
|issuerId|String|The globally unique identifier of the certification authority that issued the leaf certificate. Read-only.|
|issuerName|String|The name of the certification authority that issued the leaf certificate. Read-only.|
|keyUsages|String collection|Certificate extensions that define the purpose of the public key contained in a certificate. For example possible values are "Key Encipherment" and "Digital Signature". Read-only. Nullable.|
|ocspResponderUri|String|The Online Certificate Status Protocol (OCSP) responder URI that can be used to determine certificate status. Read-only.|
|revocationDateTime|DateTimeOffset|The date and time a certificate was revoked. If the certificate was not revoked, this will be null. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only.|
|serialNumber|String|The serial number used to uniquely identify a certificate with its issuing certification authority. Read-only. Supports $select.|
|subjectName|String|The subject name of the certificate. The subject is the target or intended beneficiary of the security being provided, such as a user or device. Read-only. Supports $select and $orderby.|
|thumbprint|String|Secure Hash Algorithm 1 digest of the certificate that can be used to identify it. Read-only. Supports $select.|
|userId|String|The unique identifier of the user for which the certificate was created. Null for userless devices. This is an Intune user ID. Nullable. Read-only. Supports $select.|
|userPrincipalName|String|User principal name of the user for which the certificate was created. Null for userless devices. Nullable. Read-only. Supports $select.|
|validityEndDateTime|DateTimeOffset|The end date time of the validity period of a certificate. Certificates cannot be used after this date time as they are longer valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.|
|validityStartDateTime|DateTimeOffset|The start date time of the validity period of a certificate. Certificates cannot be used before this date time as they are not yet valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudCertificationAuthorityLeafCertificate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudCertificationAuthorityLeafCertificate",
  "id": "String (identifier)",
  "certificateAlgorithm": "String",
  "certificateKeySize": "String",
  "hashingAlgorithm": "String",
  "subjectName": "String",
  "issuerId": "String",
  "issuerName": "String",
  "certificateStatus": "String",
  "validityStartDateTime": "String (timestamp)",
  "validityEndDateTime": "String (timestamp)",
  "crlDistributionPointUrl": "String",
  "certificationAuthorityIssuerUri": "String",
  "ocspResponderUri": "String",
  "thumbprint": "String",
  "serialNumber": "String",
  "revocationDateTime": "String (timestamp)",
  "deviceName": "String",
  "userPrincipalName": "String",
  "deviceId": "String",
  "userId": "String",
  "devicePlatform": "String",
  "keyUsages": [
    "String"
  ],
  "extendedKeyUsages": [
    "String"
  ]
}
```