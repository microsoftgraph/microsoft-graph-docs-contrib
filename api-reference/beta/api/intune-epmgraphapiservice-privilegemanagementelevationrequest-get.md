---
title: "Get privilegeManagementElevationRequest"
description: "Read properties and relationships of the privilegeManagementElevationRequest object."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: apiPageType
---

# Get privilegeManagementElevationRequest

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [privilegeManagementElevationRequest](../resources/intune-epmgraphapiservice-privilegemanagementelevationrequest.md) object.

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
GET /deviceManagement/elevationRequests/{privilegeManagementElevationRequestId}
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [privilegeManagementElevationRequest](../resources/intune-epmgraphapiservice-privilegemanagementelevationrequest.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/elevationRequests/{privilegeManagementElevationRequestId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1480

{
  "value": {
    "@odata.type": "#microsoft.graph.privilegeManagementElevationRequest",
    "id": "3df245af-45af-3df2-af45-f23daf45f23d",
    "requestedByUserId": "Requested By User Id value",
    "requestedOnDeviceId": "Requested On Device Id value",
    "requestedByUserPrincipalName": "Requested By User Principal Name value",
    "deviceName": "Device Name value",
    "requestCreatedDateTime": "2017-01-01T00:00:35.2743776-08:00",
    "requestLastModifiedDateTime": "2016-12-31T23:58:50.6194179-08:00",
    "requestJustification": "Request Justification value",
    "applicationDetail": {
      "@odata.type": "microsoft.graph.applicationDetail",
      "fileHash": "File Hash value",
      "fileName": "File Name value",
      "filePath": "File Path value",
      "fileDescription": "File Description value",
      "publisherName": "Publisher Name value",
      "publisherCert": "Publisher Cert value",
      "productName": "Product Name value",
      "productInternalName": "Product Internal Name value",
      "productVersion": "Product Version value"
    },
    "status": "pending",
    "reviewCompletedByUserId": "Review Completed By User Id value",
    "reviewCompletedByUserPrincipalName": "Review Completed By User Principal Name value",
    "reviewCompletedDateTime": "2016-12-31T23:59:07.609607-08:00",
    "requestExpiryDateTime": "2017-01-01T00:02:44.7662751-08:00",
    "reviewerJustification": "Reviewer Justification value"
  }
}
```
