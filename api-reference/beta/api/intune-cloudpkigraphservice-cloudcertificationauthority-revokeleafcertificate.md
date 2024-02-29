---
title: "revokeLeafCertificate action"
description: "Intune Cloudpkigraphservice Cloudcertificationauthority Revokeleafcertificate Api ."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# revokeLeafCertificate action

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
POST /deviceManagement/cloudCertificationAuthority/{cloudCertificationAuthorityId}/revokeLeafCertificate
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
|leafCertificateId|String|The Cloud Certification Authority Leaf Certificate unique identifier of the certificate to revoke. This id should be issued by respective certification authority.|



## Response
If successful, this action returns a `200 OK` response code and a [cloudCertificationAuthorityLeafCertificate](../resources/intune-cloudpkigraphservice-cloudcertificationauthorityleafcertificate.md) in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/cloudCertificationAuthority/{cloudCertificationAuthorityId}/revokeLeafCertificate

Content-type: application/json
Content-length: 56

{
  "leafCertificateId": "Leaf Certificate Id value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1142

{
  "value": {
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
}
```
