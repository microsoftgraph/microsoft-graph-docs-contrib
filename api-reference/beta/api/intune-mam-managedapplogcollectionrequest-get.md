---
title: "Get managedAppLogCollectionRequest"
description: "Read properties and relationships of the managedAppLogCollectionRequest object."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: apiPageType
---

# Get managedAppLogCollectionRequest

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.Read.All, DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.Read.All, DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceAppManagement/managedAppRegistrations/{managedAppRegistrationId}/managedAppLogCollectionRequests/{managedAppLogCollectionRequestId}
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
If successful, this method returns a `200 OK` response code and [managedAppLogCollectionRequest](../resources/intune-mam-managedapplogcollectionrequest.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceAppManagement/managedAppRegistrations/{managedAppRegistrationId}/managedAppLogCollectionRequests/{managedAppLogCollectionRequestId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 905

{
  "value": {
    "@odata.type": "#microsoft.graph.managedAppLogCollectionRequest",
    "id": "95b5bd26-bd26-95b5-26bd-b59526bdb595",
    "managedAppRegistrationId": "Managed App Registration Id value",
    "status": "Status value",
    "requestedBy": "Requested By value",
    "requestedByUserPrincipalName": "Requested By User Principal Name value",
    "requestedDateTime": "2017-01-01T00:01:49.2071853-08:00",
    "completedDateTime": "2016-12-31T23:58:52.3534526-08:00",
    "userLogUploadConsent": "declined",
    "uploadedLogs": [
      {
        "@odata.type": "microsoft.graph.managedAppLogUpload",
        "managedAppComponent": "Managed App Component value",
        "managedAppComponentDescription": "Managed App Component Description value",
        "status": "inProgress",
        "referenceId": "Reference Id value"
      }
    ],
    "version": "Version value"
  }
}
```