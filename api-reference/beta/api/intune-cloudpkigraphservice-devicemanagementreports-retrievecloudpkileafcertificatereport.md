---
title: "retrieveCloudPkiLeafCertificateReport action"
description: "Intune Cloudpkigraphservice Devicemanagementreports Retrievecloudpkileafcertificatereport Api ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# retrieveCloudPkiLeafCertificateReport action

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementCloudCA.Read.All, DeviceManagementCloudCA.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementCloudCA.Read.All, DeviceManagementCloudCA.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/reports/retrieveCloudPkiLeafCertificateReport
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
|certificationAuthorityId|String||
|top|Int32||
|skip|Int32||
|select|String collection||
|filter|String||
|search|String||
|orderBy|String collection||



## Response
If successful, this action returns a `200 OK` response code and a Stream in the response body.

## Example

### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/reports/retrieveCloudPkiLeafCertificateReport

Content-type: application/json
Content-length: 240

{
  "certificationAuthorityId": "Certification Authority Id value",
  "top": 3,
  "skip": 4,
  "select": [
    "Select value"
  ],
  "filter": "Filter value",
  "search": "Search value",
  "orderBy": [
    "Order By value"
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 111

{
  "value": "cmV0cmlldmVDbG91ZFBraUxlYWZDZXJ0aWZpY2F0ZVJlcG9ydCBJbnR1bmUgRG9jIFNhbXBsZSAtMjA0MzMyNDUxNA=="
}
```