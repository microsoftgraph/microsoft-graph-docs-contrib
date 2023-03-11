---
title: "inboundSharedUserProfile: exportPersonalData"
description: "Create a request to export the personal data for an inboundSharedUserProfile."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# inboundSharedUserProfiles: exportPersonalData

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a request to export the personal data for an [inboundSharedUserProfile](../resources/inboundshareduserprofile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CrossTenantUserProfileSharing.Read.All, CrossTenantUserProfileSharing.ReadWrite.All|
|Delegated (personal Microsoft account)|Not applicable|
|Application|CrossTenantUserProfileSharing.Read.All, CrossTenantUserProfileSharing.ReadWrite.All|

An account assigned with the Global Reader or Global Administrator role will be able to export data for all [inboundSharedUserProfiles](../resources/inboundshareduserprofile.md).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /directory/inboundSharedUserProfiles/userId/exportPersonalData
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Provide a request body with the following parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|bindingParameter|[microsoft.graph.inboundSharedUserProfile](../resources/inboundshareduserprofile.md)|The binding parameter of the action. This is the user id of the inbound shared user profile.|
|storageLocation|String|The storage location to download the exported data to. This can be an Azure Storage Account.|

## Response

If successful, this method returns a `202 Accepted` response code and a Location in the response body pointing to the data export request.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "inboundshareduserprofile_exportpersonaldata"
}
-->

``` http
POST https://graph.microsoft.com/beta/directory/inboundSharedUserProfiles/c228b2ae-c4fb-4eda-9620-7e73dddd1cac/exportPersonalData

{
    "storageLocation": "MyStorageAccount"
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inboundSharedUserProfile"
}
-->

``` http
HTTP/1.1 202 Accepted

{
    "Location": "https://graph.microsoft.com/v1.0/dataPolicyOperations/d007e3da-cd9b-4b02-8d66-422403c53e3f",
    "Retry-After": 60
}
```
