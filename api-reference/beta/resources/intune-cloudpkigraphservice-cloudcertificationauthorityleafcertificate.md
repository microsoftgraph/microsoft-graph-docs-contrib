---
title: "cloudCertificationAuthorityLeafCertificate resource type"
description: "Entity that represents a leaf certificate issued by a cloud certification authority."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# cloudCertificationAuthorityLeafCertificate resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
|id|String|The leaf certificate entity instance identifier, which is a randomly-generated globally unique identifier. Read-only. Supports $select.|
|subjectName|String|The subject name of the certificate. The subject is the target or intended beneficiary of the security being provided, such as a user or device. Read-only. Supports $select and $orderby.|
|issuerId|String|The globally unique identifier of the certification authority that issued the leaf certificate. Read-only.|
|issuerName|String|The name of the certification authority that issued the leaf certificate. Read-only.|
|certificateStatus|[cloudCertificationAuthorityLeafCertificateStatus](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificatestatus.md)|The current status of a certificate. Active value indicates the is in its validity period and not revoked. Revoked value indicates the certificate has been revoked and is no longer valid. Expired value indicates that the validity period of the certificate has lapsed. Possible values are: active, revoked, expired. Read-only. Supports $filter and $orderby. Possible values are: `unknown`, `active`, `revoked`, `expired`, `unknownFutureValue`.|
|validityStartDateTime|DateTimeOffset|The start date time of the validity period of a certificate. Certificates cannot be used before this date time as they are not yet valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.|
|validityEndDateTime|DateTimeOffset|The end date time of the validity period of a certificate. Certificates cannot be used after this date time as they are longer valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.|
|crlDistributionPointUrl|String|URL to find the relevant Certificate Revocation List for this certificate. Read-only.|
|certificationAuthorityIssuerUri|String|The URI of the certification authority that issued the certificate. Read-only.|
|ocspResponderUri|String|The Online Certificate Status Protocol (OCSP) responder URI that can be used to determine certificate status. Read-only.|
|thumbprint|String|Secure Hash Algorithm 1 digest of the certificate that can be used to identify it. Read-only. Supports $select.|
|serialNumber|String|The serial number used to uniquely identify a certificate with its issuing certification authority. Read-only. Supports $select.|
|revocationDateTime|DateTimeOffset|The date and time a certificate was revoked. If the certificate was not revoked, this will be null. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only.|
|deviceName|String|Name of the device for which the certificate was created. Read-only. Supports $select.|
|userPrincipalName|String|User principal name of the user for which the certificate was created. Null for userless devices. Nullable. Read-only. Supports $select.|
|deviceId|String|The unique identifier of the managed device for which the certificate was created. This ID is assigned at device enrollment time. Read-only. Supports $select.|
|userId|String|The unique identifier of the user for which the certificate was created. Null for userless devices. This is an Intune user ID. Nullable. Read-only. Supports $select.|
|devicePlatform|String|The platform of the device for which the certificate was created. Possible values are: Android, AndroidForWork, iOS, MacOS, WindowsPhone81, Windows81AndLater, Windows10AndLater, AndroidWorkProfile, Unknown, AndroidAOSP, AndroidMobileApplicationManagement, iOSMobileApplicationManagement. Default value: Unknown. Read-only. Supports $select.|
|keyUsages|String collection|Certificate extensions that define the purpose of the public key contained in a certificate. For example possible values are "Key Encipherment" and "Digital Signature". Read-only. Nullable.|
|extendedKeyUsages|String collection|Certificate extensions that further define the purpose of the public key contained in a certificate. Data is formatted as a comma-separated list of object identifiers (OID). For example a possible value is "1.3.6.1.5.5.7.3.2". Read-only. Nullable.|

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
