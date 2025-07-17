---
title: "getAllCloudCertificationAuthorityLeafCertificates action"
description: "Intune Cloudpkigraphservice Cloudcertificationauthority Getallcloudcertificationauthorityleafcertificates Api ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# getAllCloudCertificationAuthorityLeafCertificates action

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/cloudCertificationAuthority/{cloudCertificationAuthorityId}/getAllCloudCertificationAuthorityLeafCertificates
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this action returns a `200 OK` response code and a [cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md) collection in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/cloudCertificationAuthority/{cloudCertificationAuthorityId}/getAllCloudCertificationAuthorityLeafCertificates
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1206

{
  "value": [
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
  ]
}
```