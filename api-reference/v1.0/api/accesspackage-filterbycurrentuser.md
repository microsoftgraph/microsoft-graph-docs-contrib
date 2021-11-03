---
title: "accessPackage: filterByCurrentUser"
description: "Retrieve a list of accesspackage objects filtered on the signed-in user."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---
# accessPackage: filterByCurrentUser
Namespace: microsoft.graph


In [Azure AD Entitlement Management](../resources/entitlementmanagement-root.md), retrieve a list of [accessPackage](../resources/accesspackage.md) objects filtered on the signed-in user.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/accessPackages/filterByCurrentUser
```

## Function parameters
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|on|accessPackageFilterByCurrentUserOptions|The list of current user options that can be used to filter on the access packages list.|

- `allowedRequestor` is used to get the `accessPackage` objects for which the signed-in user is allowed to submit access requests. The resulting list includes all access packages that can be requested by the caller across all catalogs.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [accessPackage](../resources/accesspackage.md) collection in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "accesspackage_filterbycurrentuser"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackages/filterByCurrentUser(on='allowedRequestor')
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessPackage)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "d378b3b7-b42a-445a-8780-2841194f777e",
      "displayName": "Sales resources",
      "description": "Resources needed by the Sales department.",
      "isHidden": false,
      "createdDateTime": "2021-01-26T22:30:57.37Z",
      "modifiedDateTime": "2021-01-26T22:30:57.37Z"
    }
  ]
}
```

