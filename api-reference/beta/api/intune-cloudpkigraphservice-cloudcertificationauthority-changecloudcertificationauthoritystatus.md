---
title: "changeCloudCertificationAuthorityStatus action"
description: "Intune Cloudpkigraphservice Cloudcertificationauthority Changecloudcertificationauthoritystatus Api ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# changeCloudCertificationAuthorityStatus action

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/cloudCertificationAuthority/{cloudCertificationAuthorityId}/changeCloudCertificationAuthorityStatus
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|:---|:---|:---|
|certificationAuthorityStatus|[cloudCertificationAuthorityStatus](../resources/intune-cloudpkigraphservice-cloudcertificationauthoritystatus.md)|The new CloudCertificationAuthorityStatus to set on the cloudCertificationAuthority entity instance.|
|certificationAuthorityVersion|Int32|The CloudCertificationAuthority entity instance version to change status.|



## Response
If successful, this action returns a `200 OK` response code and a [cloudCertificationAuthority](../resources/intune-cloudpkigraphservice-cloudcertificationauthority.md) in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/cloudCertificationAuthority/{cloudCertificationAuthorityId}/changeCloudCertificationAuthorityStatus

Content-type: application/json
Content-length: 88

{
  "certificationAuthorityStatus": "active",
  "certificationAuthorityVersion": 13
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 2122

{
  "value": {
    "@odata.type": "#microsoft.graph.cloudCertificationAuthority",
    "id": "96c8868d-868d-96c8-8d86-c8968d86c896",
    "displayName": "Display Name value",
    "description": "Description value",
    "scepServerUrl": "https://example.com/scepServerUrl/",
    "certificateRevocationListUrl": "https://example.com/certificateRevocationListUrl/",
    "certificateDownloadUrl": "https://example.com/certificateDownloadUrl/",
    "certificationAuthorityIssuerUri": "Certification Authority Issuer Uri value",
    "ocspResponderUri": "Ocsp Responder Uri value",
    "certificationAuthorityStatus": "active",
    "eTag": "ETag value",
    "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
    "roleScopeTagIds": [
      "Role Scope Tag Ids value"
    ],
    "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
    "certificationAuthorityIssuerId": "Certification Authority Issuer Id value",
    "issuerCommonName": "Issuer Common Name value",
    "cloudCertificationAuthorityType": "rootCertificationAuthority",
    "validityPeriodInYears": 5,
    "validityStartDateTime": "2016-12-31T23:59:36.3292251-08:00",
    "validityEndDateTime": "2016-12-31T23:57:06.8876616-08:00",
    "organizationName": "Organization Name value",
    "organizationUnit": "Organization Unit value",
    "countryName": "Country Name value",
    "stateName": "State Name value",
    "localityName": "Locality Name value",
    "certificateKeySize": "rsa2048",
    "cloudCertificationAuthorityHashingAlgorithm": "sha256",
    "thumbprint": "Thumbprint value",
    "serialNumber": "Serial Number value",
    "subjectName": "Subject Name value",
    "commonName": "Common Name value",
    "certificateSigningRequest": "Certificate Signing Request value",
    "extendedKeyUsages": [
      {
        "@odata.type": "microsoft.graph.extendedKeyUsage",
        "name": "Name value",
        "objectIdentifier": "Object Identifier value"
      }
    ],
    "versionNumber": 13,
    "rootCertificateCommonName": "Root Certificate Common Name value",
    "keyPlatform": "software"
  }
}
```