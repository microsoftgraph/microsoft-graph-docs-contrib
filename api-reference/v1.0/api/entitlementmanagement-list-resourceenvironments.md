---
title: "List accessPackageResourceEnvironments"
description: "Retrieve a list of accessPackageResourceEnvironment objects."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List accessPackageResourceEnvironments
Namespace: microsoft.graph

Retrieve a list of [accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET identityGovernance/entitlementManagement/resourceEnvironments?$filter=originSystem eq 'SharePointOnline'
```

## Query parameters

This method requires the `$filter` [OData query parameter](/graph/query-parameters). You must apply `$filter` to retrieve the **originSystem** that's assigned the value `SharePointOnline`.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) objects in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "list_accesspackageresourceenvironment"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/resourceEnvironments?$filter=originSystem eq 'SharePointOnline'
```

### Response
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessPackageResourceEnvironment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/resourceEnvironments",
  "value": [
    {
      "id": "615f2218-678f-471f-a60a-02c2f4f80c57",
      "displayName": "https://contoso.sharepoint.com/",
      "description": "https://contoso.sharepoint.com/",
      "originSystem": "SharePointOnline",
      "originId": "https://contoso-admin.sharepoint.com/",
      "isDefaultEnvironment": false
    }
  ]
}
```

