---
title: "cloudCertificationAuthority resource type"
description: "Entity that represents a collection of metadata of a cloud certification authority."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# cloudCertificationAuthority resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity that represents a collection of metadata of a cloud certification authority.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List cloudCertificationAuthorities](../api/intune-cloudpkigraphservice-cloudcertificationauthority-list.md)|[cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md) collection|List properties and relationships of the [cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md) objects.|
|[Get cloudCertificationAuthority](../api/intune-cloudpkigraphservice-cloudcertificationauthority-get.md)|[cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md)|Read properties and relationships of the [cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md) object.|
|[Create cloudCertificationAuthority](../api/intune-cloudpkigraphservice-cloudcertificationauthority-create.md)|[cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md)|Create a new [cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md) object.|
|[Update cloudCertificationAuthority](../api/intune-cloudpkigraphservice-cloudcertificationauthority-update.md)|[cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md)|Update the properties of a [cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md) object.|
|[postCloudCertificationAuthority action](../api/intune-cloudpkigraphservice-cloudcertificationauthority-postcloudcertificationauthority.md)|[cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md) collection||
|[getAllCloudCertificationAuthority action](../api/intune-cloudpkigraphservice-cloudcertificationauthority-getallcloudcertificationauthority.md)|[cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md) collection||
|[getCloudCertificationAuthority action](../api/intune-cloudpkigraphservice-cloudcertificationauthority-getcloudcertificationauthority.md)|[cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md)||
|[patchCloudCertificationAuthority action](../api/intune-cloudpkigraphservice-cloudcertificationauthority-patchcloudcertificationauthority.md)|[cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md)||
|[getAllCloudCertificationAuthorityLeafCertificates action](../api/intune-cloudpkigraphservice-cloudcertificationauthority-getallcloudcertificationauthorityleafcertificates.md)|[cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md) collection||
|[revokeLeafCertificate action](../api/intune-cloudpkigraphservice-cloudcertificationauthority-revokeleafcertificate.md)|[cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md)||
|[changeCloudCertificationAuthorityStatus action](../api/intune-cloudpkigraphservice-cloudcertificationauthority-changecloudcertificationauthoritystatus.md)|[cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md)||
|[revokeCloudCertificationAuthorityCertificate action](../api/intune-cloudpkigraphservice-cloudcertificationauthority-revokecloudcertificationauthoritycertificate.md)|[cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md)||
|[uploadExternallySignedCertificationAuthorityCertificate action](../api/intune-cloudpkigraphservice-cloudcertificationauthority-uploadexternallysignedcertificationauthoritycertificate.md)|[cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md)||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The certification authority entity instance identifier, which is a globally unique identifier. Read-only. Supports $select.|
|displayName|String|The certification authority display name the Intune admin console. Read/write. Supports $select and $orderby.|
|description|String|The certification authority description displayed in the Intune admin console. Nullable. Read/write. Returns null if not set.|
|scepServerUrl|String|The SCEP server URL for device SCEP connections to request certificates. Read-only.|
|certificateRevocationListUrl|String|The cloud certification authority's Certificate Revocation List URL that can be used to determine revocation status. Read-only.|
|certificateDownloadUrl|String|The URL to download the certification authority certificate. Read-only.|
|certificationAuthorityIssuerUri|String|The URI of the issuing certification authority of a subordinate certification authority. Returns null if a root certification authority. Nullable. Read-only.|
|ocspResponderUri|String|The Online Certificate Status Protocol (OCSP) responder URI that can be used to determine certificate status. Read-only.|
|certificationAuthorityStatus|[cloudCertificationAuthorityStatus](../resources/intune-cloudpkigraphservice-cloudcertificationauthoritystatus.md)|Cloud certification authority current status. Unknown value returned by default if the cloud certification authority status is not known.After cloud certification authorities are created their status is set to active. Cloud certification authorities can be set to disabled to stop issuing certificates. The decommissioned value is not yet supported. Possible values are: unknown, active, disabled. Read-only. Supports $filter and $orderby. Possible values are: `unknown`, `active`, `disabled`, `decommissioned`, `signingPending`, `unknownFutureValue`.|
|eTag|String|ETag for optimistic concurrency control. Read/write.|
|lastModifiedDateTime|DateTimeOffset|Last modification date and time of this certification authority entity instance. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read/write.|
|roleScopeTagIds|String collection|List of Scope Tags for this entity instance. Scope tags limit access to an entity instance. Nullable. Read/write.|
|createdDateTime|DateTimeOffset|Creation date of this cloud certification authority entity instance. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only.|
|certificationAuthorityIssuerId|String|Issuer (parent) certification authority identifier. Nullable. Read-only. Supports $orderby and $select.|
|issuerCommonName|String||
|cloudCertificationAuthorityType|[cloudCertificationAuthorityType](../resources/intune-cloudpkigraphservice-cloudcertificationauthoritytype.md)|The certification authority type. rootCertificationAuthority value indicates root certification authorities that be used to create issuing certification authorities. issuingCertificationAuthority value indicates that a certification authority can be used to issue leaf certificates. Possible values are: rootCertificationAuthority, issuingCertificationAuthority. Read-only. Supports $orderby. Possible values are: `unknown`, `rootCertificationAuthority`, `issuingCertificationAuthority`, `issuingCertificationAuthorityWithExternalRoot`, `unknownFutureValue`.|
|validityPeriodInYears|Int32|The certification authority validity period in years configured by admins.|
|validityStartDateTime|DateTimeOffset|The start date time of the validity period of a certification authority certificate. Certificates cannot be used before this date time as they are not yet valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.|
|validityEndDateTime|DateTimeOffset|The end date time of the validity period of a certification authority certificate. Certificates cannot be used after this date time as they are longer valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.|
|organizationName|String|The organization name that is used as a distinguished name in the subject name of a certification authority certificate in the form "O=<VALUE>". Nullable. Example: Microsoft. Read-only.|
|organizationUnit|String|The organization unit name that is used as a distinguished name in the subject name of a certification authority certificate in the form "OU=<VALUE>". Nullable. Example: Security. Read-only.|
|countryName|String|The country name that is used to compose the subject name of a certification authority certificate in the form "C=<VALUE>". Nullable. Example: US. Read-only.|
|stateName|String|The state or province name that is used to compose the subject name of a certification authority certificate in the form "ST=<VALUE>". Nullable. Example: Washington. Read-only.|
|localityName|String|The locality (town, city, etc.) name that is used to compose the subject name of a certification authority certificate in the form "L=<VALUE>". This is Nullable. Example: Redmond. Read-only.|
|certificateKeySize|[cloudCertificationAuthorityCertificateKeySize](../resources/intune-cloudpkigraphservice-cloudcertificationauthoritycertificatekeysize.md)|The configured cryptography and key size in bits used to generate the certification authority certificate. Possible values are: rsa2048, rsa3072, rsa4096, eCP256, eCP256k, eCP384, eCP521. Read-only. Possible values are: `unknown`, `rsa2048`, `rsa3072`, `rsa4096`, `eCP256`, `eCP256k`, `eCP384`, `eCP521`, `unknownFutureValue`.|
|cloudCertificationAuthorityHashingAlgorithm|[cloudCertificationAuthorityHashingAlgorithm](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityhashingalgorithm.md)|Certification authority certificate hashing algorithm. Possible values are: sha256, sha384, sha512. Read-only. Possible values are: `unknown`, `sha256`, `sha384`, `sha512`, `unknownFutureValue`.|
|thumbprint|String|Secure Hash Algorithm 1 digest of the certificate that can be used to identify it. Read-only. Supports $select.|
|serialNumber|String|The serial number used to uniquely identify a certificate with its issuing certification authority. Read-only. Supports $select.|
|subjectName|String|The subject name of the certificate. The subject is the target or intended beneficiary of the security being provided, such as a company or government entity. Read-only. Supports $orderby and $select.|
|commonName|String|The certificate subject name common name, which must be unique. Read-only. Supports $select.|
|certificateSigningRequest|String|The certificate signing request used to create an issuing certification authority with a root certification authority external to Microsoft Cloud PKI. The based-64 encoded certificate signing request can be downloaded through this property. After downloading the certificate signing request, it must be signed by the external root certifcation authority. Read-only.|
|extendedKeyUsages|[extendedKeyUsage](../resources/intune-cloudpkigraphservice-extendedkeyusage.md) collection|The certificate extended key usages, which specify the usage capabilities of the certificate. Read-only.|
|versionNumber|Int32|The certification authority version, which is incremented each time the certification authority is renewed. Read-only.|
|keyPlatform|[cloudCertificationAuthorityKeyPlatformType](../resources/intune-cloudpkigraphservice-cloudcertificationauthoritykeyplatformtype.md)|. Possible values are: `unknown`, `software`, `hardwareSecurityModule`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|cloudCertificationAuthorityLeafCertificate|[cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md) collection|Required OData property to expose leaf certificate API.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudCertificationAuthority"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudCertificationAuthority",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "scepServerUrl": "String",
  "certificateRevocationListUrl": "String",
  "certificateDownloadUrl": "String",
  "certificationAuthorityIssuerUri": "String",
  "ocspResponderUri": "String",
  "certificationAuthorityStatus": "String",
  "eTag": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "createdDateTime": "String (timestamp)",
  "certificationAuthorityIssuerId": "String",
  "issuerCommonName": "String",
  "cloudCertificationAuthorityType": "String",
  "validityPeriodInYears": 1024,
  "validityStartDateTime": "String (timestamp)",
  "validityEndDateTime": "String (timestamp)",
  "organizationName": "String",
  "organizationUnit": "String",
  "countryName": "String",
  "stateName": "String",
  "localityName": "String",
  "certificateKeySize": "String",
  "cloudCertificationAuthorityHashingAlgorithm": "String",
  "thumbprint": "String",
  "serialNumber": "String",
  "subjectName": "String",
  "commonName": "String",
  "certificateSigningRequest": "String",
  "extendedKeyUsages": [
    {
      "@odata.type": "microsoft.graph.extendedKeyUsage",
      "name": "String",
      "objectIdentifier": "String"
    }
  ],
  "versionNumber": 1024,
  "keyPlatform": "String"
}
```
