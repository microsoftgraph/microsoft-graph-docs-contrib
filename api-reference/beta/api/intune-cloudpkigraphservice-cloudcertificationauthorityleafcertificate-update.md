---
title: "Update cloudCertificationAuthorityLeafCertificate"
description: "Update the properties of a cloudCertificationAuthorityLeafCertificate object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update cloudCertificationAuthorityLeafCertificate

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/cloudCertificationAuthorityLeafCertificate/{cloudCertificationAuthorityLeafCertificateId}
PATCH /deviceManagement/cloudCertificationAuthority/{cloudCertificationAuthorityId}/cloudCertificationAuthorityLeafCertificate/{cloudCertificationAuthorityLeafCertificateId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md) object.

The following table shows the properties that are required when you create the [cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md).

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



## Response
If successful, this method returns a `200 OK` response code and an updated [cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/cloudCertificationAuthorityLeafCertificate/{cloudCertificationAuthorityLeafCertificateId}
Content-type: application/json
Content-length: 1024

{
  "@odata.type": "#microsoft.graph.cloudCertificationAuthorityLeafCertificate",
  "subjectName": "Subject Name value",
  "issuerId": "Issuer Id value",
  "issuerName": "Issuer Name value",
  "certificateStatus": "active",
  "validityStartDateTime": "2016-12-31T23:59:36.3292251-08:00",
  "validityEndDateTime": "2016-12-31T23:57:06.8876616-08:00",
  "crlDistributionPointUrl": "https://example.com/crlDistributionPointUrl/",
  "certificationAuthorityIssuerUri": "Certification Authority Issuer Uri value",
  "ocspResponderUri": "Ocsp Responder Uri value",
  "thumbprint": "Thumbprint value",
  "serialNumber": "Serial Number value",
  "revocationDateTime": "2017-01-01T00:00:26.0037365-08:00",
  "deviceName": "Device Name value",
  "userPrincipalName": "User Principal Name value",
  "deviceId": "Device Id value",
  "userId": "User Id value",
  "devicePlatform": "Device Platform value",
  "keyUsages": [
    "Key Usages value"
  ],
  "extendedKeyUsages": [
    "Extended Key Usages value"
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1073

{
  "@odata.type": "#microsoft.graph.cloudCertificationAuthorityLeafCertificate",
  "id": "976c94f8-94f8-976c-f894-6c97f8946c97",
  "subjectName": "Subject Name value",
  "issuerId": "Issuer Id value",
  "issuerName": "Issuer Name value",
  "certificateStatus": "active",
  "validityStartDateTime": "2016-12-31T23:59:36.3292251-08:00",
  "validityEndDateTime": "2016-12-31T23:57:06.8876616-08:00",
  "crlDistributionPointUrl": "https://example.com/crlDistributionPointUrl/",
  "certificationAuthorityIssuerUri": "Certification Authority Issuer Uri value",
  "ocspResponderUri": "Ocsp Responder Uri value",
  "thumbprint": "Thumbprint value",
  "serialNumber": "Serial Number value",
  "revocationDateTime": "2017-01-01T00:00:26.0037365-08:00",
  "deviceName": "Device Name value",
  "userPrincipalName": "User Principal Name value",
  "deviceId": "Device Id value",
  "userId": "User Id value",
  "devicePlatform": "Device Platform value",
  "keyUsages": [
    "Key Usages value"
  ],
  "extendedKeyUsages": [
    "Extended Key Usages value"
  ]
}
```
