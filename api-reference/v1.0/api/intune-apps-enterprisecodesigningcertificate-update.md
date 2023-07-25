---
title: "Update enterpriseCodeSigningCertificate"
description: "Update the properties of a enterpriseCodeSigningCertificate object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update enterpriseCodeSigningCertificate

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [enterpriseCodeSigningCertificate](../resources/intune-apps-enterprisecodesigningcertificate.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceAppManagement/enterpriseCodeSigningCertificates/{enterpriseCodeSigningCertificateId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [enterpriseCodeSigningCertificate](../resources/intune-apps-enterprisecodesigningcertificate.md) object.

The following table shows the properties that are required when you create the [enterpriseCodeSigningCertificate](../resources/intune-apps-enterprisecodesigningcertificate.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the certificate, assigned upon creation. Supports: $filter, $select, $top, $OrderBy, $skip. $Search is not supported. Read-only.|
|content|Binary|The Windows Enterprise Code-Signing Certificate in the raw data format. Set to null once certificate has been uploaded and other properties have been populated.|
|status|certificateStatus|Whether the Certificate Status Provisioned or not Provisioned. Possible values are: notProvisioned, provisioned. Default is notProvisioned. Uploading a valid cert file through the Intune admin console will automatically populate this value in the HTTP response. Supports: $filter, $select, $top, $OrderBy, $skip. $Search is not supported. Possible values are: `notProvisioned`, `provisioned`.|
|subjectName|String|The subject name for the cert. This might contain information such as country (C), state or province (S), locality (L), common name of the cert (CN), organization (O), and organizational unit (OU). Uploading a valid cert file through the Intune admin console will automatically populate this value in the HTTP response. Supports: $filter, $select, $top, $OrderBy, $skip. $Search is not supported.|
|subject|String|The subject value for the cert. This might contain information such as country (C), state or province (S), locality (L), common name of the cert (CN), organization (O), and organizational unit (OU). Uploading a valid cert file through the Intune admin console will automatically populate this value in the HTTP response. Supports: $filter, $select, $top, $OrderBy, $skip. $Search is not supported.|
|issuerName|String|The issuer name for the cert. This might contain information such as country (C), state or province (S), locality (L), common name of the cert (CN), organization (O), and organizational unit (OU). Uploading a valid cert file through the Intune admin console will automatically populate this value in the HTTP response. Supports: $filter, $select, $top, $OrderBy, $skip. $Search is not supported.|
|issuer|String|The issuer value for the cert. This might contain information such as country (C), state or province (S), locality (L), common name of the cert (CN), organization (O), and organizational unit (OU). Uploading a valid cert file through the Intune admin console will automatically populate this value in the HTTP response. Supports: $filter, $select, $top, $OrderBy, $skip. $Search is not supported.|
|expirationDateTime|DateTimeOffset|The cert expiration date and time (using ISO 8601 format, in UTC time). Uploading a valid cert file through the Intune admin console will automatically populate this value in the HTTP response. Supports: $filter, $select, $top, $OrderBy, $skip. $Search is not supported.|
|uploadDateTime|DateTimeOffset|The date time of CodeSigning Cert when it is uploaded (using ISO 8601 format, in UTC time). Uploading a valid cert file through the Intune admin console will automatically populate this value in the HTTP response. Supports: $filter, $select, $top, $OrderBy, $skip. $Search is not supported.|



## Response
If successful, this method returns a `200 OK` response code and an updated [enterpriseCodeSigningCertificate](../resources/intune-apps-enterprisecodesigningcertificate.md) object in the response body.

## Example

### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- { "blockType": "request" , "name" : "intune_apps_enterprisecodesigningcertificate_update_update_enterprisecodesigningcertificate" }-->
``` http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/enterpriseCodeSigningCertificates/{enterpriseCodeSigningCertificateId}
Content-type: application/json
Content-length: 390

{
  "@odata.type": "#microsoft.graph.enterpriseCodeSigningCertificate",
  "content": "Y29udGVudA==",
  "status": "provisioned",
  "subjectName": "Subject Name value",
  "subject": "Subject value",
  "issuerName": "Issuer Name value",
  "issuer": "Issuer value",
  "expirationDateTime": "2016-12-31T23:57:57.2481234-08:00",
  "uploadDateTime": "2016-12-31T23:58:46.5747426-08:00"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/intune-apps-enterprisecodesigningcertificate-update-update-enterprisecodesigningcertificate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/intune-apps-enterprisecodesigningcertificate-update-update-enterprisecodesigningcertificate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/intune-apps-enterprisecodesigningcertificate-update-update-enterprisecodesigningcertificate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/intune-apps-enterprisecodesigningcertificate-update-update-enterprisecodesigningcertificate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/intune-apps-enterprisecodesigningcertificate-update-update-enterprisecodesigningcertificate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/intune-apps-enterprisecodesigningcertificate-update-update-enterprisecodesigningcertificate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/intune-apps-enterprisecodesigningcertificate-update-update-enterprisecodesigningcertificate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- { "blockType": "response" , "@odata.type" : "microsoft.graph.enterpriseCodeSigningCertificate" }-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 439

{
  "@odata.type": "#microsoft.graph.enterpriseCodeSigningCertificate",
  "id": "b20d3703-3703-b20d-0337-0db203370db2",
  "content": "Y29udGVudA==",
  "status": "provisioned",
  "subjectName": "Subject Name value",
  "subject": "Subject value",
  "issuerName": "Issuer Name value",
  "issuer": "Issuer value",
  "expirationDateTime": "2016-12-31T23:57:57.2481234-08:00",
  "uploadDateTime": "2016-12-31T23:58:46.5747426-08:00"
}
```
